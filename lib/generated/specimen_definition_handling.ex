defmodule Fhir.SpecimenDefinitionHandling do
  @moduledoc """
  A kind of specimen with associated set of requirements.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    field(:instruction, :string)
    embeds_one(:_instruction, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:maxDuration, Fhir.Duration)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:temperatureQualifier, Fhir.CodeableConcept)
    embeds_one(:temperatureRange, Fhir.Range)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          instruction: String.t(),
          _instruction: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          maxDuration: Fhir.Duration.t(),
          modifierExtension: [Fhir.Extension.t()],
          temperatureQualifier: Fhir.CodeableConcept.t(),
          temperatureRange: Fhir.Range.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id, :instruction])
    |> cast_embed(:_instruction, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:maxDuration, with: &Fhir.Duration.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:temperatureQualifier, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:temperatureRange, with: &Fhir.Range.changeset/2)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:instruction, ~r/^^[\s\S]+$$/)
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
