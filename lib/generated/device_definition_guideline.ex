defmodule Fhir.DeviceDefinitionGuideline do
  @moduledoc """
  The characteristics, operational status and capabilities of a medical-related component of a medical device.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    field(:intendedUse, :string)
    field(:usageInstruction, :string)
    embeds_one(:_intendedUse, Fhir.Element)
    embeds_one(:_usageInstruction, Fhir.Element)
    embeds_many(:contraindication, Fhir.CodeableConcept)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:indication, Fhir.CodeableConcept)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_many(:relatedArtifact, Fhir.RelatedArtifact)
    embeds_many(:useContext, Fhir.UsageContext)
    embeds_many(:warning, Fhir.CodeableConcept)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          intendedUse: String.t(),
          usageInstruction: String.t(),
          _intendedUse: Fhir.Element.t(),
          _usageInstruction: Fhir.Element.t(),
          contraindication: [Fhir.CodeableConcept.t()],
          extension: [Fhir.Extension.t()],
          indication: [Fhir.CodeableConcept.t()],
          modifierExtension: [Fhir.Extension.t()],
          relatedArtifact: [Fhir.RelatedArtifact.t()],
          useContext: [Fhir.UsageContext.t()],
          warning: [Fhir.CodeableConcept.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id, :intendedUse, :usageInstruction])
    |> cast_embed(:_intendedUse, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_usageInstruction, with: &Fhir.Element.changeset/2)
    |> cast_embed(:contraindication, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:indication, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:relatedArtifact, with: &Fhir.RelatedArtifact.changeset/2)
    |> cast_embed(:useContext, with: &Fhir.UsageContext.changeset/2)
    |> cast_embed(:warning, with: &Fhir.CodeableConcept.changeset/2)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:intendedUse, ~r/^^[\s\S]+$$/)
    |> validate_format(:usageInstruction, ~r/^^[\s\S]+$$/)
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
