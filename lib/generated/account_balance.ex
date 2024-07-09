defmodule Fhir.AccountBalance do
  @moduledoc """
  A financial tool for tracking value accrued for a particular purpose.  In the healthcare field, used to track charges for a patient, cost centers, etc.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:estimate, :boolean)
    field(:id, :string)
    embeds_one(:_estimate, Fhir.Element)
    embeds_one(:aggregate, Fhir.CodeableConcept)
    embeds_one(:amount, Fhir.Money)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:term, Fhir.CodeableConcept)
  end

  @type t :: %__MODULE__{
          estimate: boolean(),
          id: String.t(),
          _estimate: Fhir.Element.t(),
          aggregate: Fhir.CodeableConcept.t(),
          amount: Fhir.Money.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          term: Fhir.CodeableConcept.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:estimate, :id])
    |> cast_embed(:_estimate, with: &Fhir.Element.changeset/2)
    |> cast_embed(:aggregate, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:amount, with: &Fhir.Money.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:term, with: &Fhir.CodeableConcept.changeset/2)
    |> validate_inclusion(:estimate, [true, false])
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
  end

  def new(params) do
    %__MODULE__{}
    |> changeset(params)
    |> apply_action(:new)
  end

  def new!(params) do
    case new(params) do
      {:ok, val} -> val
      {:error, cs} -> raise "Invalid #{__ENV__.module}.new!(): #{inspect(cs.errors)}"
    end
  end
end
