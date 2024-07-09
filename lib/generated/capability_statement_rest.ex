defmodule Fhir.CapabilityStatementRest do
  @moduledoc """
  A Capability Statement documents a set of capabilities (behaviors) of a FHIR Server or Client for a particular version of FHIR that may be used as a statement of actual server functionality or a statement of required or desired server implementation.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:compartment, :string)
    field(:documentation, :string)
    field(:id, :string)
    field(:mode, :string)
    embeds_one(:_documentation, Fhir.Element)
    embeds_one(:_mode, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:interaction, Fhir.CapabilityStatementInteraction1)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_many(:operation, Fhir.CapabilityStatementOperation)
    embeds_many(:resource, Fhir.CapabilityStatementResource)
    embeds_many(:searchParam, Fhir.CapabilityStatementSearchParam)
    embeds_one(:security, Fhir.CapabilityStatementSecurity)
  end

  @type t :: %__MODULE__{
          compartment: String.t(),
          documentation: String.t(),
          id: String.t(),
          mode: String.t(),
          _documentation: Fhir.Element.t(),
          _mode: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          interaction: [Fhir.CapabilityStatementInteraction1.t()],
          modifierExtension: [Fhir.Extension.t()],
          operation: [Fhir.CapabilityStatementOperation.t()],
          resource: [Fhir.CapabilityStatementResource.t()],
          searchParam: [Fhir.CapabilityStatementSearchParam.t()],
          security: Fhir.CapabilityStatementSecurity.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:compartment, :documentation, :id, :mode])
    |> cast_embed(:_documentation, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_mode, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:interaction, with: &Fhir.CapabilityStatementInteraction1.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:operation, with: &Fhir.CapabilityStatementOperation.changeset/2)
    |> cast_embed(:resource, with: &Fhir.CapabilityStatementResource.changeset/2)
    |> cast_embed(:searchParam, with: &Fhir.CapabilityStatementSearchParam.changeset/2)
    |> cast_embed(:security, with: &Fhir.CapabilityStatementSecurity.changeset/2)
    |> validate_format(:documentation, ~r/^^[\s\S]+$$/)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:mode, ~r/^[^\s]+( [^\s]+)*$/)
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
