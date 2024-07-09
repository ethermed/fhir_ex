defmodule Fhir.DetectedIssueMitigation do
  @moduledoc """
  Indicates an actual or potential clinical issue with or between one or more active or proposed clinical actions for a patient; e.g. Drug-drug interaction, Ineffective treatment frequency, Procedure-condition conflict, gaps in care, etc.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:date, :string)
    field(:id, :string)
    embeds_one(:_date, Fhir.Element)
    embeds_one(:action, Fhir.CodeableConcept)
    embeds_one(:author, Fhir.Reference)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_many(:note, Fhir.Annotation)
  end

  @type t :: %__MODULE__{
          date: String.t(),
          id: String.t(),
          _date: Fhir.Element.t(),
          action: Fhir.CodeableConcept.t(),
          author: Fhir.Reference.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          note: [Fhir.Annotation.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:date, :id])
    |> cast_embed(:_date, with: &Fhir.Element.changeset/2)
    |> cast_embed(:action, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:author, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:note, with: &Fhir.Annotation.changeset/2)
    |> validate_format(
      :date,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?)?)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)?)?)?$/
    )
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
