defmodule Fhir.AllergyIntoleranceReaction do
  @moduledoc """
  Risk of harmful or undesirable physiological response which is specific to an individual and associated with exposure to a substance.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:description, :string)
    field(:id, :string)
    field(:onset, :string)
    field(:severity, :string)
    embeds_one(:_description, Fhir.Element)
    embeds_one(:_onset, Fhir.Element)
    embeds_one(:_severity, Fhir.Element)
    embeds_one(:exposureRoute, Fhir.CodeableConcept)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:manifestation, Fhir.CodeableReference)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_many(:note, Fhir.Annotation)
    embeds_one(:substance, Fhir.CodeableConcept)
  end

  @type t :: %__MODULE__{
          description: String.t(),
          id: String.t(),
          onset: String.t(),
          severity: String.t(),
          _description: Fhir.Element.t(),
          _onset: Fhir.Element.t(),
          _severity: Fhir.Element.t(),
          exposureRoute: Fhir.CodeableConcept.t(),
          extension: [Fhir.Extension.t()],
          manifestation: [Fhir.CodeableReference.t()],
          modifierExtension: [Fhir.Extension.t()],
          note: [Fhir.Annotation.t()],
          substance: Fhir.CodeableConcept.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:description, :id, :onset, :severity])
    |> cast_embed(:_description, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_onset, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_severity, with: &Fhir.Element.changeset/2)
    |> cast_embed(:exposureRoute, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:manifestation, with: &Fhir.CodeableReference.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:note, with: &Fhir.Annotation.changeset/2)
    |> cast_embed(:substance, with: &Fhir.CodeableConcept.changeset/2)
    |> validate_format(:description, ~r/^^[\s\S]+$$/)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(
      :onset,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?)?)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)?)?)?$/
    )
    |> validate_format(:severity, ~r/^[^\s]+( [^\s]+)*$/)
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
