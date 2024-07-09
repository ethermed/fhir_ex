defmodule Fhir.ValueSetInclude do
  @moduledoc """
  A ValueSet resource instance specifies a set of codes drawn from one or more code systems, intended for use in a particular context. Value sets link between [CodeSystem](codesystem.html) definitions and their use in [coded elements](terminologies.html).
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:copyright, :string)
    field(:id, :string)
    field(:system, :string)
    field(:valueSet, :string)
    field(:version, :string)
    embeds_one(:_copyright, Fhir.Element)
    embeds_one(:_system, Fhir.Element)
    embeds_one(:_version, Fhir.Element)
    embeds_many(:concept, Fhir.ValueSetConcept)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:filter, Fhir.ValueSetFilter)
    embeds_many(:modifierExtension, Fhir.Extension)
  end

  @type t :: %__MODULE__{
          copyright: String.t(),
          id: String.t(),
          system: String.t(),
          valueSet: String.t(),
          version: String.t(),
          _copyright: Fhir.Element.t(),
          _system: Fhir.Element.t(),
          _version: Fhir.Element.t(),
          concept: [Fhir.ValueSetConcept.t()],
          extension: [Fhir.Extension.t()],
          filter: [Fhir.ValueSetFilter.t()],
          modifierExtension: [Fhir.Extension.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:copyright, :id, :system, :valueSet, :version])
    |> cast_embed(:_copyright, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_system, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_version, with: &Fhir.Element.changeset/2)
    |> cast_embed(:concept, with: &Fhir.ValueSetConcept.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:filter, with: &Fhir.ValueSetFilter.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> validate_format(:copyright, ~r/^^[\s\S]+$$/)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
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
