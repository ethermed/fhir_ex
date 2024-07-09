defmodule Fhir.Coding do
  @moduledoc """
  A reference to a code defined by a terminology system.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:code, :string)
    field(:display, :string)
    field(:id, :string)
    field(:system, :string)
    field(:userSelected, :boolean)
    field(:version, :string)
    embeds_one(:_code, Fhir.Element)
    embeds_one(:_display, Fhir.Element)
    embeds_one(:_system, Fhir.Element)
    embeds_one(:_userSelected, Fhir.Element)
    embeds_one(:_version, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
  end

  @type t :: %__MODULE__{
          code: String.t(),
          display: String.t(),
          id: String.t(),
          system: String.t(),
          userSelected: boolean(),
          version: String.t(),
          _code: Fhir.Element.t(),
          _display: Fhir.Element.t(),
          _system: Fhir.Element.t(),
          _userSelected: Fhir.Element.t(),
          _version: Fhir.Element.t(),
          extension: [Fhir.Extension.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:code, :display, :id, :system, :userSelected, :version])
    |> cast_embed(:_code, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_display, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_system, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_userSelected, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_version, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> validate_format(:code, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:display, ~r/^^[\s\S]+$$/)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:system, ~r/^\S*$/)
    |> validate_inclusion(:userSelected, [true, false])
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
