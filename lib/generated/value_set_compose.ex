defmodule Fhir.ValueSetCompose do
  @moduledoc """
  A ValueSet resource instance specifies a set of codes drawn from one or more code systems, intended for use in a particular context. Value sets link between [CodeSystem](codesystem.html) definitions and their use in [coded elements](terminologies.html).
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    field(:inactive, :boolean)
    field(:lockedDate, :string)
    field(:property, :string)
    embeds_one(:_inactive, Fhir.Element)
    embeds_one(:_lockedDate, Fhir.Element)
    embeds_many(:_property, Fhir.Element)
    embeds_many(:exclude, Fhir.ValueSetInclude)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:include, Fhir.ValueSetInclude)
    embeds_many(:modifierExtension, Fhir.Extension)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          inactive: boolean(),
          lockedDate: String.t(),
          property: String.t(),
          _inactive: Fhir.Element.t(),
          _lockedDate: Fhir.Element.t(),
          _property: [Fhir.Element.t()],
          exclude: [Fhir.ValueSetInclude.t()],
          extension: [Fhir.Extension.t()],
          include: [Fhir.ValueSetInclude.t()],
          modifierExtension: [Fhir.Extension.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id, :inactive, :lockedDate, :property])
    |> cast_embed(:_inactive, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_lockedDate, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_property, with: &Fhir.Element.changeset/2)
    |> cast_embed(:exclude, with: &Fhir.ValueSetInclude.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:include, with: &Fhir.ValueSetInclude.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_inclusion(:inactive, [true, false])
    |> validate_format(
      :lockedDate,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$/
    )
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
