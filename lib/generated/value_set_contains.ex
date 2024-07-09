defmodule Fhir.ValueSetContains do
  @moduledoc """
  A ValueSet resource instance specifies a set of codes drawn from one or more code systems, intended for use in a particular context. Value sets link between [CodeSystem](codesystem.html) definitions and their use in [coded elements](terminologies.html).
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:abstract, :boolean)
    field(:code, :string)
    field(:display, :string)
    field(:id, :string)
    field(:inactive, :boolean)
    field(:system, :string)
    field(:version, :string)
    embeds_one(:_abstract, Fhir.Element)
    embeds_one(:_code, Fhir.Element)
    embeds_one(:_display, Fhir.Element)
    embeds_one(:_inactive, Fhir.Element)
    embeds_one(:_system, Fhir.Element)
    embeds_one(:_version, Fhir.Element)
    embeds_many(:contains, Fhir.ValueSetContains)
    embeds_many(:designation, Fhir.ValueSetDesignation)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_many(:property, Fhir.ValueSetProperty1)
  end

  @type t :: %__MODULE__{
          abstract: boolean(),
          code: String.t(),
          display: String.t(),
          id: String.t(),
          inactive: boolean(),
          system: String.t(),
          version: String.t(),
          _abstract: Fhir.Element.t(),
          _code: Fhir.Element.t(),
          _display: Fhir.Element.t(),
          _inactive: Fhir.Element.t(),
          _system: Fhir.Element.t(),
          _version: Fhir.Element.t(),
          contains: [Fhir.ValueSetContains.t()],
          designation: [Fhir.ValueSetDesignation.t()],
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          property: [Fhir.ValueSetProperty1.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:abstract, :code, :display, :id, :inactive, :system, :version])
    |> cast_embed(:_abstract, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_code, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_display, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_inactive, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_system, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_version, with: &Fhir.Element.changeset/2)
    |> cast_embed(:contains, with: &Fhir.ValueSetContains.changeset/2)
    |> cast_embed(:designation, with: &Fhir.ValueSetDesignation.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:property, with: &Fhir.ValueSetProperty1.changeset/2)
    |> validate_inclusion(:abstract, [true, false])
    |> validate_format(:code, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:display, ~r/^^[\s\S]+$$/)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_inclusion(:inactive, [true, false])
    |> validate_format(:system, ~r/^\S*$/)
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
