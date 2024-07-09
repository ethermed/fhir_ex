defmodule Fhir.AuditEventEntity do
  @moduledoc """
  A record of an event relevant for purposes such as operations, privacy, security, maintenance, and performance analysis.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    field(:query, :string)
    embeds_one(:_query, Fhir.Element)
    embeds_many(:agent, Fhir.AuditEventAgent)
    embeds_many(:detail, Fhir.AuditEventDetail)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:role, Fhir.CodeableConcept)
    embeds_many(:securityLabel, Fhir.CodeableConcept)
    embeds_one(:what, Fhir.Reference)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          query: String.t(),
          _query: Fhir.Element.t(),
          agent: [Fhir.AuditEventAgent.t()],
          detail: [Fhir.AuditEventDetail.t()],
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          role: Fhir.CodeableConcept.t(),
          securityLabel: [Fhir.CodeableConcept.t()],
          what: Fhir.Reference.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id, :query])
    |> cast_embed(:_query, with: &Fhir.Element.changeset/2)
    |> cast_embed(:agent, with: &Fhir.AuditEventAgent.changeset/2)
    |> cast_embed(:detail, with: &Fhir.AuditEventDetail.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:role, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:securityLabel, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:what, with: &Fhir.Reference.changeset/2)
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
