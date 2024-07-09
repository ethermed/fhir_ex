defmodule Fhir.FamilyMemberHistoryCondition do
  @moduledoc """
  Significant health conditions for a person related to the patient relevant in the context of care for the patient.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:contributedToDeath, :boolean)
    field(:id, :string)
    field(:onsetString, :string)
    embeds_one(:_contributedToDeath, Fhir.Element)
    embeds_one(:_onsetString, Fhir.Element)
    embeds_one(:code, Fhir.CodeableConcept)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_many(:note, Fhir.Annotation)
    embeds_one(:onsetAge, Fhir.Age)
    embeds_one(:onsetPeriod, Fhir.Period)
    embeds_one(:onsetRange, Fhir.Range)
    embeds_one(:outcome, Fhir.CodeableConcept)
  end

  @type t :: %__MODULE__{
          contributedToDeath: boolean(),
          id: String.t(),
          onsetString: String.t(),
          _contributedToDeath: Fhir.Element.t(),
          _onsetString: Fhir.Element.t(),
          code: Fhir.CodeableConcept.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          note: [Fhir.Annotation.t()],
          onsetAge: Fhir.Age.t(),
          onsetPeriod: Fhir.Period.t(),
          onsetRange: Fhir.Range.t(),
          outcome: Fhir.CodeableConcept.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:contributedToDeath, :id, :onsetString])
    |> cast_embed(:_contributedToDeath, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_onsetString, with: &Fhir.Element.changeset/2)
    |> cast_embed(:code, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:note, with: &Fhir.Annotation.changeset/2)
    |> cast_embed(:onsetAge, with: &Fhir.Age.changeset/2)
    |> cast_embed(:onsetPeriod, with: &Fhir.Period.changeset/2)
    |> cast_embed(:onsetRange, with: &Fhir.Range.changeset/2)
    |> cast_embed(:outcome, with: &Fhir.CodeableConcept.changeset/2)
    |> validate_inclusion(:contributedToDeath, [true, false])
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
