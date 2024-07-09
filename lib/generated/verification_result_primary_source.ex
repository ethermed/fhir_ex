defmodule Fhir.VerificationResultPrimarySource do
  @moduledoc """
  Describes validation requirements, source(s), status and dates for one or more elements.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    field(:validationDate, :string)
    embeds_one(:_validationDate, Fhir.Element)
    embeds_one(:canPushUpdates, Fhir.CodeableConcept)
    embeds_many(:communicationMethod, Fhir.CodeableConcept)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_many(:pushTypeAvailable, Fhir.CodeableConcept)
    embeds_many(:type, Fhir.CodeableConcept)
    embeds_one(:validationStatus, Fhir.CodeableConcept)
    embeds_one(:who, Fhir.Reference)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          validationDate: String.t(),
          _validationDate: Fhir.Element.t(),
          canPushUpdates: Fhir.CodeableConcept.t(),
          communicationMethod: [Fhir.CodeableConcept.t()],
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          pushTypeAvailable: [Fhir.CodeableConcept.t()],
          type: [Fhir.CodeableConcept.t()],
          validationStatus: Fhir.CodeableConcept.t(),
          who: Fhir.Reference.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id, :validationDate])
    |> cast_embed(:_validationDate, with: &Fhir.Element.changeset/2)
    |> cast_embed(:canPushUpdates, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:communicationMethod, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:pushTypeAvailable, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:type, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:validationStatus, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:who, with: &Fhir.Reference.changeset/2)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(
      :validationDate,
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
