defmodule Fhir.MedicationKnowledgeStorageGuideline do
  @moduledoc """
  Information about a medication that is used to support knowledge.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    field(:reference, :string)
    embeds_one(:_reference, Fhir.Element)
    embeds_many(:environmentalSetting, Fhir.MedicationKnowledgeEnvironmentalSetting)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_many(:note, Fhir.Annotation)
    embeds_one(:stabilityDuration, Fhir.Duration)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          reference: String.t(),
          _reference: Fhir.Element.t(),
          environmentalSetting: [Fhir.MedicationKnowledgeEnvironmentalSetting.t()],
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          note: [Fhir.Annotation.t()],
          stabilityDuration: Fhir.Duration.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id, :reference])
    |> cast_embed(:_reference, with: &Fhir.Element.changeset/2)
    |> cast_embed(:environmentalSetting,
      with: &Fhir.MedicationKnowledgeEnvironmentalSetting.changeset/2
    )
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:note, with: &Fhir.Annotation.changeset/2)
    |> cast_embed(:stabilityDuration, with: &Fhir.Duration.changeset/2)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:reference, ~r/^\S*$/)
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
