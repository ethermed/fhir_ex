defmodule Fhir.ResearchSubjectProgress do
  @moduledoc """
  A ResearchSubject is a participant or object which is the recipient of investigative activities in a research study.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:endDate, :string)
    field(:id, :string)
    field(:startDate, :string)
    embeds_one(:_endDate, Fhir.Element)
    embeds_one(:_startDate, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:milestone, Fhir.CodeableConcept)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:reason, Fhir.CodeableConcept)
    embeds_one(:subjectState, Fhir.CodeableConcept)
    embeds_one(:type, Fhir.CodeableConcept)
  end

  @type t :: %__MODULE__{
          endDate: String.t(),
          id: String.t(),
          startDate: String.t(),
          _endDate: Fhir.Element.t(),
          _startDate: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          milestone: Fhir.CodeableConcept.t(),
          modifierExtension: [Fhir.Extension.t()],
          reason: Fhir.CodeableConcept.t(),
          subjectState: Fhir.CodeableConcept.t(),
          type: Fhir.CodeableConcept.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:endDate, :id, :startDate])
    |> cast_embed(:_endDate, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_startDate, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:milestone, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:reason, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:subjectState, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:type, with: &Fhir.CodeableConcept.changeset/2)
    |> validate_format(
      :endDate,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?)?)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)?)?)?$/
    )
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(
      :startDate,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?)?)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)?)?)?$/
    )
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
