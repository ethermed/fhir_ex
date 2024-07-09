defmodule Fhir.MedicinalProductDefinitionOperation do
  @moduledoc """
  A medicinal product, being a substance or combination of substances that is intended to treat, prevent or diagnose a disease, or to restore, correct or modify physiological functions by exerting a pharmacological, immunological or metabolic action. This resource is intended to define and detail such products and their properties, for uses other than direct patient care (e.g. regulatory use, or drug catalogs).
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    embeds_one(:confidentialityIndicator, Fhir.CodeableConcept)
    embeds_one(:effectiveDate, Fhir.Period)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_many(:organization, Fhir.Reference)
    embeds_one(:type, Fhir.CodeableReference)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          confidentialityIndicator: Fhir.CodeableConcept.t(),
          effectiveDate: Fhir.Period.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          organization: [Fhir.Reference.t()],
          type: Fhir.CodeableReference.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id])
    |> cast_embed(:confidentialityIndicator, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:effectiveDate, with: &Fhir.Period.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:organization, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:type, with: &Fhir.CodeableReference.changeset/2)
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
