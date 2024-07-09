defmodule Fhir.DeviceName do
  @moduledoc """
  A type of a manufactured item that is used in the provision of healthcare without being substantially changed through that activity. The device may be a medical or non-medical device.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:display, :boolean)
    field(:id, :string)
    field(:type, :string)
    field(:value, :string)
    embeds_one(:_display, Fhir.Element)
    embeds_one(:_type, Fhir.Element)
    embeds_one(:_value, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
  end

  @type t :: %__MODULE__{
          display: boolean(),
          id: String.t(),
          type: String.t(),
          value: String.t(),
          _display: Fhir.Element.t(),
          _type: Fhir.Element.t(),
          _value: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:display, :id, :type, :value])
    |> cast_embed(:_display, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_type, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_value, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> validate_inclusion(:display, [true, false])
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:type, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:value, ~r/^^[\s\S]+$$/)
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
