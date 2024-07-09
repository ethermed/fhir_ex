defmodule Fhir.InventoryItemInstance do
  @moduledoc """
  A functional description of an inventory item used in inventory and supply-related workflows.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:expiry, :string)
    field(:id, :string)
    field(:lotNumber, :string)
    embeds_one(:_expiry, Fhir.Element)
    embeds_one(:_lotNumber, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:identifier, Fhir.Identifier)
    embeds_one(:location, Fhir.Reference)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:subject, Fhir.Reference)
  end

  @type t :: %__MODULE__{
          expiry: String.t(),
          id: String.t(),
          lotNumber: String.t(),
          _expiry: Fhir.Element.t(),
          _lotNumber: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          identifier: [Fhir.Identifier.t()],
          location: Fhir.Reference.t(),
          modifierExtension: [Fhir.Extension.t()],
          subject: Fhir.Reference.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:expiry, :id, :lotNumber])
    |> cast_embed(:_expiry, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_lotNumber, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:location, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:subject, with: &Fhir.Reference.changeset/2)
    |> validate_format(
      :expiry,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?)?)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)?)?)?$/
    )
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:lotNumber, ~r/^^[\s\S]+$$/)
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
