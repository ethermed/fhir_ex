defmodule Fhir.SubstancePolymer do
  @moduledoc """
  Properties of a substance specific to it being a polymer.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    field(:implicitRules, :string)
    field(:language, :string)
    field(:modification, :string)
    field(:resourceType, :string, default: "SubstancePolymer")
    embeds_one(:_implicitRules, Fhir.Element)
    embeds_one(:_language, Fhir.Element)
    embeds_one(:_modification, Fhir.Element)
    embeds_one(:class, Fhir.CodeableConcept)
    embeds_many(:contained, Fhir.ResourceList)
    embeds_many(:copolymerConnectivity, Fhir.CodeableConcept)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:geometry, Fhir.CodeableConcept)
    embeds_one(:identifier, Fhir.Identifier)
    embeds_one(:meta, Fhir.Meta)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_many(:monomerSet, Fhir.SubstancePolymerMonomerSet)
    embeds_many(:repeat, Fhir.SubstancePolymerRepeat)
    embeds_one(:text, Fhir.Narrative)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          implicitRules: String.t(),
          language: String.t(),
          modification: String.t(),
          resourceType: String.t(),
          _implicitRules: Fhir.Element.t(),
          _language: Fhir.Element.t(),
          _modification: Fhir.Element.t(),
          class: Fhir.CodeableConcept.t(),
          contained: [Fhir.ResourceList.t()],
          copolymerConnectivity: [Fhir.CodeableConcept.t()],
          extension: [Fhir.Extension.t()],
          geometry: Fhir.CodeableConcept.t(),
          identifier: Fhir.Identifier.t(),
          meta: Fhir.Meta.t(),
          modifierExtension: [Fhir.Extension.t()],
          monomerSet: [Fhir.SubstancePolymerMonomerSet.t()],
          repeat: [Fhir.SubstancePolymerRepeat.t()],
          text: Fhir.Narrative.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id, :implicitRules, :language, :modification, :resourceType])
    |> cast_embed(:_implicitRules, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_modification, with: &Fhir.Element.changeset/2)
    |> cast_embed(:class, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:contained, with: &Fhir.ResourceList.changeset/2)
    |> cast_embed(:copolymerConnectivity, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:geometry, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:meta, with: &Fhir.Meta.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:monomerSet, with: &Fhir.SubstancePolymerMonomerSet.changeset/2)
    |> cast_embed(:repeat, with: &Fhir.SubstancePolymerRepeat.changeset/2)
    |> cast_embed(:text, with: &Fhir.Narrative.changeset/2)
    |> validate_format(:id, ~r/^[A-Za-z0-9\-\.]{1,64}$/)
    |> validate_format(:implicitRules, ~r/^\S*$/)
    |> validate_format(:language, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:modification, ~r/^^[\s\S]+$$/)
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
