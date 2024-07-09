defmodule Fhir.MessageHeaderSource do
  @moduledoc """
  The header for a message exchange that is either requesting or responding to an action.  The reference(s) that are the subject of the action as well as other information related to the action are typically transmitted in a bundle in which the MessageHeader resource instance is the first resource in the bundle.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:endpointUrl, :string)
    field(:id, :string)
    field(:name, :string)
    field(:software, :string)
    field(:version, :string)
    embeds_one(:_endpointUrl, Fhir.Element)
    embeds_one(:_name, Fhir.Element)
    embeds_one(:_software, Fhir.Element)
    embeds_one(:_version, Fhir.Element)
    embeds_one(:contact, Fhir.ContactPoint)
    embeds_one(:endpointReference, Fhir.Reference)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
  end

  @type t :: %__MODULE__{
          endpointUrl: String.t(),
          id: String.t(),
          name: String.t(),
          software: String.t(),
          version: String.t(),
          _endpointUrl: Fhir.Element.t(),
          _name: Fhir.Element.t(),
          _software: Fhir.Element.t(),
          _version: Fhir.Element.t(),
          contact: Fhir.ContactPoint.t(),
          endpointReference: Fhir.Reference.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:endpointUrl, :id, :name, :software, :version])
    |> cast_embed(:_endpointUrl, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_name, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_software, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_version, with: &Fhir.Element.changeset/2)
    |> cast_embed(:contact, with: &Fhir.ContactPoint.changeset/2)
    |> cast_embed(:endpointReference, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:name, ~r/^^[\s\S]+$$/)
    |> validate_format(:software, ~r/^^[\s\S]+$$/)
    |> validate_format(:version, ~r/^^[\s\S]+$$/)
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
