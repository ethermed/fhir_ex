defmodule Fhir.DeviceDefinitionMaterial do
  @moduledoc """
  The characteristics, operational status and capabilities of a medical-related component of a medical device.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:allergenicIndicator, :boolean)
    field(:alternate, :boolean)
    field(:id, :string)
    embeds_one(:_allergenicIndicator, Fhir.Element)
    embeds_one(:_alternate, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:substance, Fhir.CodeableConcept)
  end

  @type t :: %__MODULE__{
          allergenicIndicator: boolean(),
          alternate: boolean(),
          id: String.t(),
          _allergenicIndicator: Fhir.Element.t(),
          _alternate: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          substance: Fhir.CodeableConcept.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:allergenicIndicator, :alternate, :id])
    |> cast_embed(:_allergenicIndicator, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_alternate, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:substance, with: &Fhir.CodeableConcept.changeset/2)
    |> validate_inclusion(:allergenicIndicator, [true, false])
    |> validate_inclusion(:alternate, [true, false])
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
