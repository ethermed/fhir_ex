defmodule Fhir.ExampleScenarioContainedInstance do
  @moduledoc """
  Example of workflow instance.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    field(:instanceReference, :string)
    field(:versionReference, :string)
    embeds_one(:_instanceReference, Fhir.Element)
    embeds_one(:_versionReference, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          instanceReference: String.t(),
          versionReference: String.t(),
          _instanceReference: Fhir.Element.t(),
          _versionReference: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id, :instanceReference, :versionReference])
    |> cast_embed(:_instanceReference, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_versionReference, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:instanceReference, ~r/^^[\s\S]+$$/)
    |> validate_format(:versionReference, ~r/^^[\s\S]+$$/)
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
