defmodule Fhir.ImplementationGuideDependsOn do
  @moduledoc """
  A set of rules of how a particular interoperability or standards problem is solved - typically through the use of FHIR resources. This resource is used to gather all the parts of an implementation guide into a logical whole and to publish a computable definition of all the parts.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    field(:packageId, :string)
    field(:reason, :string)
    field(:uri, :string)
    field(:version, :string)
    embeds_one(:_packageId, Fhir.Element)
    embeds_one(:_reason, Fhir.Element)
    embeds_one(:_version, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          packageId: String.t(),
          reason: String.t(),
          uri: String.t(),
          version: String.t(),
          _packageId: Fhir.Element.t(),
          _reason: Fhir.Element.t(),
          _version: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id, :packageId, :reason, :uri, :version])
    |> cast_embed(:_packageId, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_reason, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_version, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:packageId, ~r/^[A-Za-z0-9\-\.]{1,64}$/)
    |> validate_format(:reason, ~r/^^[\s\S]+$$/)
    |> validate_format(:uri, ~r/^\S*$/)
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
