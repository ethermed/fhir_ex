defmodule Fhir.ValueSetExpansion do
  @moduledoc """
  A ValueSet resource instance specifies a set of codes drawn from one or more code systems, intended for use in a particular context. Value sets link between [CodeSystem](codesystem.html) definitions and their use in [coded elements](terminologies.html).
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    field(:identifier, :string)
    field(:next, :string)
    field(:offset, :float)
    field(:timestamp, :string)
    field(:total, :float)
    embeds_one(:_identifier, Fhir.Element)
    embeds_one(:_next, Fhir.Element)
    embeds_one(:_offset, Fhir.Element)
    embeds_one(:_timestamp, Fhir.Element)
    embeds_one(:_total, Fhir.Element)
    embeds_many(:contains, Fhir.ValueSetContains)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_many(:parameter, Fhir.ValueSetParameter)
    embeds_many(:property, Fhir.ValueSetProperty)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          identifier: String.t(),
          next: String.t(),
          offset: float(),
          timestamp: String.t(),
          total: float(),
          _identifier: Fhir.Element.t(),
          _next: Fhir.Element.t(),
          _offset: Fhir.Element.t(),
          _timestamp: Fhir.Element.t(),
          _total: Fhir.Element.t(),
          contains: [Fhir.ValueSetContains.t()],
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          parameter: [Fhir.ValueSetParameter.t()],
          property: [Fhir.ValueSetProperty.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id, :identifier, :next, :offset, :timestamp, :total])
    |> cast_embed(:_identifier, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_next, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_offset, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_timestamp, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_total, with: &Fhir.Element.changeset/2)
    |> cast_embed(:contains, with: &Fhir.ValueSetContains.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:parameter, with: &Fhir.ValueSetParameter.changeset/2)
    |> cast_embed(:property, with: &Fhir.ValueSetProperty.changeset/2)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:identifier, ~r/^\S*$/)
    |> validate_format(:next, ~r/^\S*$/)
    |> validate_format(:offset, ~r/^[0]|[-+]?[1-9][0-9]*$/)
    |> validate_format(
      :timestamp,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?)?)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)?)?)?$/
    )
    |> validate_format(:total, ~r/^[0]|[-+]?[1-9][0-9]*$/)
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
