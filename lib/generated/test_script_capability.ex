defmodule Fhir.TestScriptCapability do
  @moduledoc """
  A structured set of tests against a FHIR server or client implementation to determine compliance against the FHIR specification.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:capabilities, :string)
    field(:description, :string)
    field(:destination, :float)
    field(:id, :string)
    field(:link, :string)
    field(:origin, :string)
    field(:required, :boolean)
    field(:validated, :boolean)
    embeds_one(:_description, Fhir.Element)
    embeds_one(:_destination, Fhir.Element)
    embeds_many(:_link, Fhir.Element)
    embeds_many(:_origin, Fhir.Element)
    embeds_one(:_required, Fhir.Element)
    embeds_one(:_validated, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
  end

  @type t :: %__MODULE__{
          capabilities: String.t(),
          description: String.t(),
          destination: float(),
          id: String.t(),
          link: String.t(),
          origin: String.t(),
          required: boolean(),
          validated: boolean(),
          _description: Fhir.Element.t(),
          _destination: Fhir.Element.t(),
          _link: [Fhir.Element.t()],
          _origin: [Fhir.Element.t()],
          _required: Fhir.Element.t(),
          _validated: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :capabilities,
      :description,
      :destination,
      :id,
      :link,
      :origin,
      :required,
      :validated
    ])
    |> cast_embed(:_description, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_destination, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_link, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_origin, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_required, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_validated, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> validate_format(:capabilities, ~r/^\S*$/)
    |> validate_format(:description, ~r/^^[\s\S]+$$/)
    |> validate_format(:destination, ~r/^[0]|[-+]?[1-9][0-9]*$/)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_inclusion(:required, [true, false])
    |> validate_inclusion(:validated, [true, false])
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
