defmodule Fhir.SpecimenProcessing do
  @moduledoc """
  A sample to be used for analysis.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:description, :string)
    field(:id, :string)
    field(:timeDateTime, :string)
    embeds_one(:_description, Fhir.Element)
    embeds_one(:_timeDateTime, Fhir.Element)
    embeds_many(:additive, Fhir.Reference)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:method, Fhir.CodeableConcept)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:timePeriod, Fhir.Period)
  end

  @type t :: %__MODULE__{
          description: String.t(),
          id: String.t(),
          timeDateTime: String.t(),
          _description: Fhir.Element.t(),
          _timeDateTime: Fhir.Element.t(),
          additive: [Fhir.Reference.t()],
          extension: [Fhir.Extension.t()],
          method: Fhir.CodeableConcept.t(),
          modifierExtension: [Fhir.Extension.t()],
          timePeriod: Fhir.Period.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:description, :id, :timeDateTime])
    |> cast_embed(:_description, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_timeDateTime, with: &Fhir.Element.changeset/2)
    |> cast_embed(:additive, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:method, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:timePeriod, with: &Fhir.Period.changeset/2)
    |> validate_format(:description, ~r/^^[\s\S]+$$/)
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
