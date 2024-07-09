defmodule Fhir.MessageHeader do
  @moduledoc """
  The header for a message exchange that is either requesting or responding to an action.  The reference(s) that are the subject of the action as well as other information related to the action are typically transmitted in a bundle in which the MessageHeader resource instance is the first resource in the bundle.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:definition, :string)
    field(:eventCanonical, :string)
    field(:id, :string)
    field(:implicitRules, :string)
    field(:language, :string)
    field(:resourceType, :string, default: "MessageHeader")
    embeds_one(:_eventCanonical, Fhir.Element)
    embeds_one(:_implicitRules, Fhir.Element)
    embeds_one(:_language, Fhir.Element)
    embeds_one(:author, Fhir.Reference)
    embeds_many(:contained, Fhir.ResourceList)
    embeds_many(:destination, Fhir.MessageHeaderDestination)
    embeds_one(:eventCoding, Fhir.Coding)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:focus, Fhir.Reference)
    embeds_one(:meta, Fhir.Meta)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:reason, Fhir.CodeableConcept)
    embeds_one(:response, Fhir.MessageHeaderResponse)
    embeds_one(:responsible, Fhir.Reference)
    embeds_one(:sender, Fhir.Reference)
    embeds_one(:source, Fhir.MessageHeaderSource)
    embeds_one(:text, Fhir.Narrative)
  end

  @type t :: %__MODULE__{
          definition: String.t(),
          eventCanonical: String.t(),
          id: String.t(),
          implicitRules: String.t(),
          language: String.t(),
          resourceType: String.t(),
          _eventCanonical: Fhir.Element.t(),
          _implicitRules: Fhir.Element.t(),
          _language: Fhir.Element.t(),
          author: Fhir.Reference.t(),
          contained: [Fhir.ResourceList.t()],
          destination: [Fhir.MessageHeaderDestination.t()],
          eventCoding: Fhir.Coding.t(),
          extension: [Fhir.Extension.t()],
          focus: [Fhir.Reference.t()],
          meta: Fhir.Meta.t(),
          modifierExtension: [Fhir.Extension.t()],
          reason: Fhir.CodeableConcept.t(),
          response: Fhir.MessageHeaderResponse.t(),
          responsible: Fhir.Reference.t(),
          sender: Fhir.Reference.t(),
          source: Fhir.MessageHeaderSource.t(),
          text: Fhir.Narrative.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:definition, :eventCanonical, :id, :implicitRules, :language, :resourceType])
    |> cast_embed(:_eventCanonical, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_implicitRules, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:author, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:contained, with: &Fhir.ResourceList.changeset/2)
    |> cast_embed(:destination, with: &Fhir.MessageHeaderDestination.changeset/2)
    |> cast_embed(:eventCoding, with: &Fhir.Coding.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:focus, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:meta, with: &Fhir.Meta.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:reason, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:response, with: &Fhir.MessageHeaderResponse.changeset/2)
    |> cast_embed(:responsible, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:sender, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:source, with: &Fhir.MessageHeaderSource.changeset/2)
    |> cast_embed(:text, with: &Fhir.Narrative.changeset/2)
    |> validate_format(:definition, ~r/^\S*$/)
    |> validate_format(:id, ~r/^[A-Za-z0-9\-\.]{1,64}$/)
    |> validate_format(:implicitRules, ~r/^\S*$/)
    |> validate_format(:language, ~r/^[^\s]+( [^\s]+)*$/)
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
