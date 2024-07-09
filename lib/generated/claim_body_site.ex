defmodule Fhir.ClaimBodySite do
  @moduledoc """
  A provider issued list of professional services and products which have been provided, or are to be provided, to a patient which is sent to an insurer for reimbursement.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_many(:site, Fhir.CodeableReference)
    embeds_many(:subSite, Fhir.CodeableConcept)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          site: [Fhir.CodeableReference.t()],
          subSite: [Fhir.CodeableConcept.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id])
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:site, with: &Fhir.CodeableReference.changeset/2)
    |> cast_embed(:subSite, with: &Fhir.CodeableConcept.changeset/2)
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
