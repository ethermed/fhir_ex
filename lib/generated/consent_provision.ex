defmodule Fhir.ConsentProvision do
  @moduledoc """
  A record of a healthcare consumer’s  choices  or choices made on their behalf by a third party, which permits or denies identified recipient(s) or recipient role(s) to perform one or more actions within a given policy context, for specific purposes and periods of time.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    embeds_many(:action, Fhir.CodeableConcept)
    embeds_many(:actor, Fhir.ConsentActor)
    embeds_many(:code, Fhir.CodeableConcept)
    embeds_many(:data, Fhir.ConsentData)
    embeds_one(:dataPeriod, Fhir.Period)
    embeds_many(:documentType, Fhir.Coding)
    embeds_one(:expression, Fhir.Expression)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:period, Fhir.Period)
    embeds_many(:provision, Fhir.ConsentProvision)
    embeds_many(:purpose, Fhir.Coding)
    embeds_many(:resourceType, Fhir.Coding)
    embeds_many(:securityLabel, Fhir.Coding)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          action: [Fhir.CodeableConcept.t()],
          actor: [Fhir.ConsentActor.t()],
          code: [Fhir.CodeableConcept.t()],
          data: [Fhir.ConsentData.t()],
          dataPeriod: Fhir.Period.t(),
          documentType: [Fhir.Coding.t()],
          expression: Fhir.Expression.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          period: Fhir.Period.t(),
          provision: [Fhir.ConsentProvision.t()],
          purpose: [Fhir.Coding.t()],
          resourceType: [Fhir.Coding.t()],
          securityLabel: [Fhir.Coding.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id])
    |> cast_embed(:action, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:actor, with: &Fhir.ConsentActor.changeset/2)
    |> cast_embed(:code, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:data, with: &Fhir.ConsentData.changeset/2)
    |> cast_embed(:dataPeriod, with: &Fhir.Period.changeset/2)
    |> cast_embed(:documentType, with: &Fhir.Coding.changeset/2)
    |> cast_embed(:expression, with: &Fhir.Expression.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:period, with: &Fhir.Period.changeset/2)
    |> cast_embed(:provision, with: &Fhir.ConsentProvision.changeset/2)
    |> cast_embed(:purpose, with: &Fhir.Coding.changeset/2)
    |> cast_embed(:resourceType, with: &Fhir.Coding.changeset/2)
    |> cast_embed(:securityLabel, with: &Fhir.Coding.changeset/2)
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
