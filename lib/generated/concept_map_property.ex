defmodule Fhir.ConceptMapProperty do
  @moduledoc """
  A statement of relationships from one set of concepts to one or more other concepts - either concepts in code systems, or data element/data element concepts, or classes in class models.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:code, :string)
    field(:description, :string)
    field(:id, :string)
    field(:system, :string)
    field(:type, :string)
    field(:uri, :string)
    embeds_one(:_code, Fhir.Element)
    embeds_one(:_description, Fhir.Element)
    embeds_one(:_type, Fhir.Element)
    embeds_one(:_uri, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
  end

  @type t :: %__MODULE__{
          code: String.t(),
          description: String.t(),
          id: String.t(),
          system: String.t(),
          type: String.t(),
          uri: String.t(),
          _code: Fhir.Element.t(),
          _description: Fhir.Element.t(),
          _type: Fhir.Element.t(),
          _uri: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:code, :description, :id, :system, :type, :uri])
    |> cast_embed(:_code, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_description, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_type, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_uri, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> validate_format(:code, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:description, ~r/^^[\s\S]+$$/)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:system, ~r/^\S*$/)
    |> validate_format(:type, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:uri, ~r/^\S*$/)
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
