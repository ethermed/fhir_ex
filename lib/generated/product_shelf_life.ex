defmodule Fhir.ProductShelfLife do
  @moduledoc """
  The shelf-life and storage information for a medicinal product item or container can be described using this class.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    field(:periodString, :string)
    embeds_one(:_periodString, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:periodDuration, Fhir.Duration)
    embeds_many(:specialPrecautionsForStorage, Fhir.CodeableConcept)
    embeds_one(:type, Fhir.CodeableConcept)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          periodString: String.t(),
          _periodString: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          periodDuration: Fhir.Duration.t(),
          specialPrecautionsForStorage: [Fhir.CodeableConcept.t()],
          type: Fhir.CodeableConcept.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id, :periodString])
    |> cast_embed(:_periodString, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:periodDuration, with: &Fhir.Duration.changeset/2)
    |> cast_embed(:specialPrecautionsForStorage, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:type, with: &Fhir.CodeableConcept.changeset/2)
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
