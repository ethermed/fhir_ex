defmodule Fhir.CapabilityStatementResource do
  @moduledoc """
  A Capability Statement documents a set of capabilities (behaviors) of a FHIR Server or Client for a particular version of FHIR that may be used as a statement of actual server functionality or a statement of required or desired server implementation.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:profile, :string)
    field(:conditionalRead, :string)
    field(:conditionalCreate, :boolean)
    field(:conditionalDelete, :string)
    field(:conditionalPatch, :boolean)
    field(:supportedProfile, :string)
    field(:referencePolicy, :string)
    field(:updateCreate, :boolean)
    field(:type, :string)
    field(:searchRevInclude, :string)
    field(:documentation, :string)
    field(:searchInclude, :string)
    field(:readHistory, :boolean)
    field(:conditionalUpdate, :boolean)
    field(:id, :string)
    field(:versioning, :string)
    embeds_many(:operation, Fhir.CapabilityStatementOperation)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:_searchRevInclude, Fhir.Element)
    embeds_many(:_referencePolicy, Fhir.Element)
    embeds_one(:_conditionalPatch, Fhir.Element)
    embeds_one(:_conditionalRead, Fhir.Element)
    embeds_one(:_conditionalCreate, Fhir.Element)
    embeds_one(:_documentation, Fhir.Element)
    embeds_one(:_updateCreate, Fhir.Element)
    embeds_many(:interaction, Fhir.CapabilityStatementInteraction)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:_conditionalDelete, Fhir.Element)
    embeds_one(:_readHistory, Fhir.Element)
    embeds_one(:_versioning, Fhir.Element)
    embeds_one(:_conditionalUpdate, Fhir.Element)
    embeds_many(:searchParam, Fhir.CapabilityStatementSearchParam)
    embeds_many(:_searchInclude, Fhir.Element)
    embeds_one(:_type, Fhir.Element)
  end

  @type t :: %__MODULE__{
          profile: String.t(),
          conditionalRead: String.t(),
          conditionalCreate: boolean(),
          conditionalDelete: String.t(),
          conditionalPatch: boolean(),
          supportedProfile: String.t(),
          referencePolicy: String.t(),
          updateCreate: boolean(),
          type: String.t(),
          searchRevInclude: String.t(),
          documentation: String.t(),
          searchInclude: String.t(),
          readHistory: boolean(),
          conditionalUpdate: boolean(),
          id: String.t(),
          versioning: String.t(),
          operation: [Fhir.CapabilityStatementOperation.t()],
          extension: [Fhir.Extension.t()],
          _searchRevInclude: [Fhir.Element.t()],
          _referencePolicy: [Fhir.Element.t()],
          _conditionalPatch: Fhir.Element.t(),
          _conditionalRead: Fhir.Element.t(),
          _conditionalCreate: Fhir.Element.t(),
          _documentation: Fhir.Element.t(),
          _updateCreate: Fhir.Element.t(),
          interaction: [Fhir.CapabilityStatementInteraction.t()],
          modifierExtension: [Fhir.Extension.t()],
          _conditionalDelete: Fhir.Element.t(),
          _readHistory: Fhir.Element.t(),
          _versioning: Fhir.Element.t(),
          _conditionalUpdate: Fhir.Element.t(),
          searchParam: [Fhir.CapabilityStatementSearchParam.t()],
          _searchInclude: [Fhir.Element.t()],
          _type: Fhir.Element.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :profile,
      :conditionalRead,
      :conditionalCreate,
      :conditionalDelete,
      :conditionalPatch,
      :supportedProfile,
      :referencePolicy,
      :updateCreate,
      :type,
      :searchRevInclude,
      :documentation,
      :searchInclude,
      :readHistory,
      :conditionalUpdate,
      :id,
      :versioning
    ])
    |> cast_embed(:operation, with: &Fhir.CapabilityStatementOperation.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:_searchRevInclude, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_referencePolicy, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_conditionalPatch, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_conditionalRead, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_conditionalCreate, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_documentation, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_updateCreate, with: &Fhir.Element.changeset/2)
    |> cast_embed(:interaction, with: &Fhir.CapabilityStatementInteraction.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:_conditionalDelete, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_readHistory, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_versioning, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_conditionalUpdate, with: &Fhir.Element.changeset/2)
    |> cast_embed(:searchParam, with: &Fhir.CapabilityStatementSearchParam.changeset/2)
    |> cast_embed(:_searchInclude, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_type, with: &Fhir.Element.changeset/2)
    |> validate_format(:profile, ~r/^\S*$/)
    |> validate_format(:conditionalRead, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_inclusion(:conditionalCreate, [true, false])
    |> validate_format(:conditionalDelete, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_inclusion(:conditionalPatch, [true, false])
    |> validate_inclusion(:updateCreate, [true, false])
    |> validate_format(:type, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:documentation, ~r/^^[\s\S]+$$/)
    |> validate_inclusion(:readHistory, [true, false])
    |> validate_inclusion(:conditionalUpdate, [true, false])
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:versioning, ~r/^[^\s]+( [^\s]+)*$/)
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
