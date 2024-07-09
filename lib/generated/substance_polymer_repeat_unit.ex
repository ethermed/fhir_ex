defmodule Fhir.SubstancePolymerRepeatUnit do
  @moduledoc """
  Properties of a substance specific to it being a polymer.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:amount, :float)
    field(:id, :string)
    field(:unit, :string)
    embeds_one(:_amount, Fhir.Element)
    embeds_one(:_unit, Fhir.Element)
    embeds_many(:degreeOfPolymerisation, Fhir.SubstancePolymerDegreeOfPolymerisation)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:orientation, Fhir.CodeableConcept)
    embeds_many(:structuralRepresentation, Fhir.SubstancePolymerStructuralRepresentation)
  end

  @type t :: %__MODULE__{
          amount: float(),
          id: String.t(),
          unit: String.t(),
          _amount: Fhir.Element.t(),
          _unit: Fhir.Element.t(),
          degreeOfPolymerisation: [Fhir.SubstancePolymerDegreeOfPolymerisation.t()],
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          orientation: Fhir.CodeableConcept.t(),
          structuralRepresentation: [Fhir.SubstancePolymerStructuralRepresentation.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:amount, :id, :unit])
    |> cast_embed(:_amount, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_unit, with: &Fhir.Element.changeset/2)
    |> cast_embed(:degreeOfPolymerisation,
      with: &Fhir.SubstancePolymerDegreeOfPolymerisation.changeset/2
    )
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:orientation, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:structuralRepresentation,
      with: &Fhir.SubstancePolymerStructuralRepresentation.changeset/2
    )
    |> validate_format(:amount, ~r/^[0]|[-+]?[1-9][0-9]*$/)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:unit, ~r/^^[\s\S]+$$/)
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
