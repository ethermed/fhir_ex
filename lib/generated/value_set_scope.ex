defmodule Fhir.ValueSetScope do
  @moduledoc """
  A ValueSet resource instance specifies a set of codes drawn from one or more code systems, intended for use in a particular context. Value sets link between [CodeSystem](codesystem.html) definitions and their use in [coded elements](terminologies.html).
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:exclusionCriteria, :string)
    field(:id, :string)
    field(:inclusionCriteria, :string)
    embeds_one(:_exclusionCriteria, Fhir.Element)
    embeds_one(:_inclusionCriteria, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
  end

  @type t :: %__MODULE__{
          exclusionCriteria: String.t(),
          id: String.t(),
          inclusionCriteria: String.t(),
          _exclusionCriteria: Fhir.Element.t(),
          _inclusionCriteria: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:exclusionCriteria, :id, :inclusionCriteria])
    |> cast_embed(:_exclusionCriteria, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_inclusionCriteria, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> validate_format(:exclusionCriteria, ~r/^^[\s\S]+$$/)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:inclusionCriteria, ~r/^^[\s\S]+$$/)
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
