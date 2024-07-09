defmodule Fhir.CoverageEligibilityRequestSupportingInfo do
  @moduledoc """
  The CoverageEligibilityRequest provides patient and insurance coverage information to an insurer for them to respond, in the form of an CoverageEligibilityResponse, with information regarding whether the stated coverage is valid and in-force and optionally to provide the insurance details of the policy.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:appliesToAll, :boolean)
    field(:id, :string)
    field(:sequence, :float)
    embeds_one(:_appliesToAll, Fhir.Element)
    embeds_one(:_sequence, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:information, Fhir.Reference)
    embeds_many(:modifierExtension, Fhir.Extension)
  end

  @type t :: %__MODULE__{
          appliesToAll: boolean(),
          id: String.t(),
          sequence: float(),
          _appliesToAll: Fhir.Element.t(),
          _sequence: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          information: Fhir.Reference.t(),
          modifierExtension: [Fhir.Extension.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:appliesToAll, :id, :sequence])
    |> cast_embed(:_appliesToAll, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_sequence, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:information, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> validate_inclusion(:appliesToAll, [true, false])
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
