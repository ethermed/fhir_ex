defmodule Fhir.TerminologyCapabilitiesCodeSystem do
  @moduledoc """
  A TerminologyCapabilities resource documents a set of capabilities (behaviors) of a FHIR Terminology Server that may be used as a statement of actual server functionality or a statement of required or desired server implementation.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:content, :string)
    field(:id, :string)
    field(:subsumption, :boolean)
    field(:uri, :string)
    embeds_one(:_content, Fhir.Element)
    embeds_one(:_subsumption, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_many(:version, Fhir.TerminologyCapabilitiesVersion)
  end

  @type t :: %__MODULE__{
          content: String.t(),
          id: String.t(),
          subsumption: boolean(),
          uri: String.t(),
          _content: Fhir.Element.t(),
          _subsumption: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          version: [Fhir.TerminologyCapabilitiesVersion.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:content, :id, :subsumption, :uri])
    |> cast_embed(:_content, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_subsumption, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:version, with: &Fhir.TerminologyCapabilitiesVersion.changeset/2)
    |> validate_format(:content, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_inclusion(:subsumption, [true, false])
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
