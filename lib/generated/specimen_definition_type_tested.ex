defmodule Fhir.SpecimenDefinitionTypeTested do
  @moduledoc """
  A kind of specimen with associated set of requirements.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    field(:isDerived, :boolean)
    field(:preference, :string)
    field(:requirement, :string)
    field(:singleUse, :boolean)
    embeds_one(:_isDerived, Fhir.Element)
    embeds_one(:_preference, Fhir.Element)
    embeds_one(:_requirement, Fhir.Element)
    embeds_one(:_singleUse, Fhir.Element)
    embeds_one(:container, Fhir.SpecimenDefinitionContainer)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:handling, Fhir.SpecimenDefinitionHandling)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_many(:rejectionCriterion, Fhir.CodeableConcept)
    embeds_one(:retentionTime, Fhir.Duration)
    embeds_many(:testingDestination, Fhir.CodeableConcept)
    embeds_one(:type, Fhir.CodeableConcept)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          isDerived: boolean(),
          preference: String.t(),
          requirement: String.t(),
          singleUse: boolean(),
          _isDerived: Fhir.Element.t(),
          _preference: Fhir.Element.t(),
          _requirement: Fhir.Element.t(),
          _singleUse: Fhir.Element.t(),
          container: Fhir.SpecimenDefinitionContainer.t(),
          extension: [Fhir.Extension.t()],
          handling: [Fhir.SpecimenDefinitionHandling.t()],
          modifierExtension: [Fhir.Extension.t()],
          rejectionCriterion: [Fhir.CodeableConcept.t()],
          retentionTime: Fhir.Duration.t(),
          testingDestination: [Fhir.CodeableConcept.t()],
          type: Fhir.CodeableConcept.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id, :isDerived, :preference, :requirement, :singleUse])
    |> cast_embed(:_isDerived, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_preference, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_requirement, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_singleUse, with: &Fhir.Element.changeset/2)
    |> cast_embed(:container, with: &Fhir.SpecimenDefinitionContainer.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:handling, with: &Fhir.SpecimenDefinitionHandling.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:rejectionCriterion, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:retentionTime, with: &Fhir.Duration.changeset/2)
    |> cast_embed(:testingDestination, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:type, with: &Fhir.CodeableConcept.changeset/2)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_inclusion(:isDerived, [true, false])
    |> validate_format(:preference, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:requirement, ~r/^^[\s\S]+$$/)
    |> validate_inclusion(:singleUse, [true, false])
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
