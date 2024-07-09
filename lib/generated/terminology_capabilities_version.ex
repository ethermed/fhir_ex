defmodule Fhir.TerminologyCapabilitiesVersion do
  @moduledoc """
  A TerminologyCapabilities resource documents a set of capabilities (behaviors) of a FHIR Terminology Server that may be used as a statement of actual server functionality or a statement of required or desired server implementation.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:code, :string)
    field(:compositional, :boolean)
    field(:id, :string)
    field(:isDefault, :boolean)
    field(:language, :string)
    field(:property, :string)
    embeds_one(:_code, Fhir.Element)
    embeds_one(:_compositional, Fhir.Element)
    embeds_one(:_isDefault, Fhir.Element)
    embeds_many(:_language, Fhir.Element)
    embeds_many(:_property, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:filter, Fhir.TerminologyCapabilitiesFilter)
    embeds_many(:modifierExtension, Fhir.Extension)
  end

  @type t :: %__MODULE__{
          code: String.t(),
          compositional: boolean(),
          id: String.t(),
          isDefault: boolean(),
          language: String.t(),
          property: String.t(),
          _code: Fhir.Element.t(),
          _compositional: Fhir.Element.t(),
          _isDefault: Fhir.Element.t(),
          _language: [Fhir.Element.t()],
          _property: [Fhir.Element.t()],
          extension: [Fhir.Extension.t()],
          filter: [Fhir.TerminologyCapabilitiesFilter.t()],
          modifierExtension: [Fhir.Extension.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:code, :compositional, :id, :isDefault, :language, :property])
    |> cast_embed(:_code, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_compositional, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_isDefault, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_property, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:filter, with: &Fhir.TerminologyCapabilitiesFilter.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> validate_format(:code, ~r/^^[\s\S]+$$/)
    |> validate_inclusion(:compositional, [true, false])
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_inclusion(:isDefault, [true, false])
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
