defmodule Fhir.TerminologyCapabilitiesExpansion do
  @moduledoc """
  A TerminologyCapabilities resource documents a set of capabilities (behaviors) of a FHIR Terminology Server that may be used as a statement of actual server functionality or a statement of required or desired server implementation.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:hierarchical, :boolean)
    field(:id, :string)
    field(:incomplete, :boolean)
    field(:paging, :boolean)
    field(:textFilter, :string)
    embeds_one(:_hierarchical, Fhir.Element)
    embeds_one(:_incomplete, Fhir.Element)
    embeds_one(:_paging, Fhir.Element)
    embeds_one(:_textFilter, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_many(:parameter, Fhir.TerminologyCapabilitiesParameter)
  end

  @type t :: %__MODULE__{
          hierarchical: boolean(),
          id: String.t(),
          incomplete: boolean(),
          paging: boolean(),
          textFilter: String.t(),
          _hierarchical: Fhir.Element.t(),
          _incomplete: Fhir.Element.t(),
          _paging: Fhir.Element.t(),
          _textFilter: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          parameter: [Fhir.TerminologyCapabilitiesParameter.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:hierarchical, :id, :incomplete, :paging, :textFilter])
    |> cast_embed(:_hierarchical, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_incomplete, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_paging, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_textFilter, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:parameter, with: &Fhir.TerminologyCapabilitiesParameter.changeset/2)
    |> validate_inclusion(:hierarchical, [true, false])
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_inclusion(:incomplete, [true, false])
    |> validate_inclusion(:paging, [true, false])
    |> validate_format(:textFilter, ~r/^^[\s\S]+$$/)
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
