defmodule Fhir.ListEntry do
  @moduledoc """
  A List is a curated collection of resources, for things such as problem lists, allergy lists, facility list, organization list, etc.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:date, :string)
    field(:deleted, :boolean)
    field(:id, :string)
    embeds_one(:_date, Fhir.Element)
    embeds_one(:_deleted, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:flag, Fhir.CodeableConcept)
    embeds_one(:item, Fhir.Reference)
    embeds_many(:modifierExtension, Fhir.Extension)
  end

  @type t :: %__MODULE__{
          date: String.t(),
          deleted: boolean(),
          id: String.t(),
          _date: Fhir.Element.t(),
          _deleted: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          flag: Fhir.CodeableConcept.t(),
          item: Fhir.Reference.t(),
          modifierExtension: [Fhir.Extension.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:date, :deleted, :id])
    |> cast_embed(:_date, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_deleted, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:flag, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:item, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> validate_format(
      :date,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?)?)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)?)?)?$/
    )
    |> validate_inclusion(:deleted, [true, false])
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
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
