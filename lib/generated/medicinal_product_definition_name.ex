defmodule Fhir.MedicinalProductDefinitionName do
  @moduledoc """
  A medicinal product, being a substance or combination of substances that is intended to treat, prevent or diagnose a disease, or to restore, correct or modify physiological functions by exerting a pharmacological, immunological or metabolic action. This resource is intended to define and detail such products and their properties, for uses other than direct patient care (e.g. regulatory use, or drug catalogs).
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    field(:productName, :string)
    embeds_one(:_productName, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_many(:part, Fhir.MedicinalProductDefinitionPart)
    embeds_one(:type, Fhir.CodeableConcept)
    embeds_many(:usage, Fhir.MedicinalProductDefinitionUsage)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          productName: String.t(),
          _productName: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          part: [Fhir.MedicinalProductDefinitionPart.t()],
          type: Fhir.CodeableConcept.t(),
          usage: [Fhir.MedicinalProductDefinitionUsage.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id, :productName])
    |> cast_embed(:_productName, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:part, with: &Fhir.MedicinalProductDefinitionPart.changeset/2)
    |> cast_embed(:type, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:usage, with: &Fhir.MedicinalProductDefinitionUsage.changeset/2)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:productName, ~r/^^[\s\S]+$$/)
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
