defmodule Fhir.ImplementationGuideTemplate do
  @moduledoc """
  A set of rules of how a particular interoperability or standards problem is solved - typically through the use of FHIR resources. This resource is used to gather all the parts of an implementation guide into a logical whole and to publish a computable definition of all the parts.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:code, :string)
    field(:id, :string)
    field(:scope, :string)
    field(:source, :string)
    embeds_one(:_code, Fhir.Element)
    embeds_one(:_scope, Fhir.Element)
    embeds_one(:_source, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
  end

  @type t :: %__MODULE__{
          code: String.t(),
          id: String.t(),
          scope: String.t(),
          source: String.t(),
          _code: Fhir.Element.t(),
          _scope: Fhir.Element.t(),
          _source: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:code, :id, :scope, :source])
    |> cast_embed(:_code, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_scope, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_source, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> validate_format(:code, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:scope, ~r/^^[\s\S]+$$/)
    |> validate_format(:source, ~r/^^[\s\S]+$$/)
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
