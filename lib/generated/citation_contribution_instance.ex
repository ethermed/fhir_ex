defmodule Fhir.CitationContributionInstance do
  @moduledoc """
  The Citation Resource enables reference to any knowledge artifact for purposes of identification and attribution. The Citation Resource supports existing reference structures and developing publication practices such as versioning, expressing complex contributorship roles, and referencing computable resources.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    field(:time, :string)
    embeds_one(:_time, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:type, Fhir.CodeableConcept)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          time: String.t(),
          _time: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          type: Fhir.CodeableConcept.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id, :time])
    |> cast_embed(:_time, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:type, with: &Fhir.CodeableConcept.changeset/2)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(
      :time,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?)?)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)?)?)?$/
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
