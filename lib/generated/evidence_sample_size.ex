defmodule Fhir.EvidenceSampleSize do
  @moduledoc """
  The Evidence Resource provides a machine-interpretable expression of an evidence concept including the evidence variables (e.g., population, exposures/interventions, comparators, outcomes, measured variables, confounding variables), the statistics, and the certainty of this evidence.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:description, :string)
    field(:id, :string)
    field(:knownDataCount, :float)
    field(:numberOfParticipants, :float)
    field(:numberOfStudies, :float)
    embeds_one(:_description, Fhir.Element)
    embeds_one(:_knownDataCount, Fhir.Element)
    embeds_one(:_numberOfParticipants, Fhir.Element)
    embeds_one(:_numberOfStudies, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_many(:note, Fhir.Annotation)
  end

  @type t :: %__MODULE__{
          description: String.t(),
          id: String.t(),
          knownDataCount: float(),
          numberOfParticipants: float(),
          numberOfStudies: float(),
          _description: Fhir.Element.t(),
          _knownDataCount: Fhir.Element.t(),
          _numberOfParticipants: Fhir.Element.t(),
          _numberOfStudies: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          note: [Fhir.Annotation.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:description, :id, :knownDataCount, :numberOfParticipants, :numberOfStudies])
    |> cast_embed(:_description, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_knownDataCount, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_numberOfParticipants, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_numberOfStudies, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:note, with: &Fhir.Annotation.changeset/2)
    |> validate_format(:description, ~r/^^[\s\S]+$$/)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:knownDataCount, ~r/^[0]|([1-9][0-9]*)$/)
    |> validate_format(:numberOfParticipants, ~r/^[0]|([1-9][0-9]*)$/)
    |> validate_format(:numberOfStudies, ~r/^[0]|([1-9][0-9]*)$/)
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
