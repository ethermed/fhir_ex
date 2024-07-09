defmodule Fhir.ExplanationOfBenefitCareTeam do
  @moduledoc """
  This resource provides: the claim details; adjudication details from the processing of a Claim; and optionally account balance information, for informing the subscriber of the benefits provided.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    field(:responsible, :boolean)
    field(:sequence, :float)
    embeds_one(:_responsible, Fhir.Element)
    embeds_one(:_sequence, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:provider, Fhir.Reference)
    embeds_one(:role, Fhir.CodeableConcept)
    embeds_one(:specialty, Fhir.CodeableConcept)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          responsible: boolean(),
          sequence: float(),
          _responsible: Fhir.Element.t(),
          _sequence: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          provider: Fhir.Reference.t(),
          role: Fhir.CodeableConcept.t(),
          specialty: Fhir.CodeableConcept.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id, :responsible, :sequence])
    |> cast_embed(:_responsible, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_sequence, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:provider, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:role, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:specialty, with: &Fhir.CodeableConcept.changeset/2)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_inclusion(:responsible, [true, false])
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
