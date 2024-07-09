defmodule Fhir.CapabilityStatementMessaging do
  @moduledoc """
  A Capability Statement documents a set of capabilities (behaviors) of a FHIR Server or Client for a particular version of FHIR that may be used as a statement of actual server functionality or a statement of required or desired server implementation.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:documentation, :string)
    field(:id, :string)
    field(:reliableCache, :float)
    embeds_one(:_documentation, Fhir.Element)
    embeds_one(:_reliableCache, Fhir.Element)
    embeds_many(:endpoint, Fhir.CapabilityStatementEndpoint)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_many(:supportedMessage, Fhir.CapabilityStatementSupportedMessage)
  end

  @type t :: %__MODULE__{
          documentation: String.t(),
          id: String.t(),
          reliableCache: float(),
          _documentation: Fhir.Element.t(),
          _reliableCache: Fhir.Element.t(),
          endpoint: [Fhir.CapabilityStatementEndpoint.t()],
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          supportedMessage: [Fhir.CapabilityStatementSupportedMessage.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:documentation, :id, :reliableCache])
    |> cast_embed(:_documentation, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_reliableCache, with: &Fhir.Element.changeset/2)
    |> cast_embed(:endpoint, with: &Fhir.CapabilityStatementEndpoint.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:supportedMessage, with: &Fhir.CapabilityStatementSupportedMessage.changeset/2)
    |> validate_format(:documentation, ~r/^^[\s\S]+$$/)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:reliableCache, ~r/^[0]|([1-9][0-9]*)$/)
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
