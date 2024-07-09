defmodule Fhir.InsurancePlan do
  @moduledoc """
  Details of a Health Insurance product/plan provided by an organization.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:alias, :string)
    field(:id, :string)
    field(:implicitRules, :string)
    field(:language, :string)
    field(:name, :string)
    field(:resourceType, :string, default: "InsurancePlan")
    field(:status, :string)
    embeds_many(:_alias, Fhir.Element)
    embeds_one(:_implicitRules, Fhir.Element)
    embeds_one(:_language, Fhir.Element)
    embeds_one(:_name, Fhir.Element)
    embeds_one(:_status, Fhir.Element)
    embeds_one(:administeredBy, Fhir.Reference)
    embeds_many(:contact, Fhir.ExtendedContactDetail)
    embeds_many(:contained, Fhir.ResourceList)
    embeds_many(:coverage, Fhir.InsurancePlanCoverage)
    embeds_many(:coverageArea, Fhir.Reference)
    embeds_many(:endpoint, Fhir.Reference)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:identifier, Fhir.Identifier)
    embeds_one(:meta, Fhir.Meta)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_many(:network, Fhir.Reference)
    embeds_one(:ownedBy, Fhir.Reference)
    embeds_one(:period, Fhir.Period)
    embeds_many(:plan, Fhir.InsurancePlanPlan)
    embeds_one(:text, Fhir.Narrative)
    embeds_many(:type, Fhir.CodeableConcept)
  end

  @type t :: %__MODULE__{
          alias: String.t(),
          id: String.t(),
          implicitRules: String.t(),
          language: String.t(),
          name: String.t(),
          resourceType: String.t(),
          status: String.t(),
          _alias: [Fhir.Element.t()],
          _implicitRules: Fhir.Element.t(),
          _language: Fhir.Element.t(),
          _name: Fhir.Element.t(),
          _status: Fhir.Element.t(),
          administeredBy: Fhir.Reference.t(),
          contact: [Fhir.ExtendedContactDetail.t()],
          contained: [Fhir.ResourceList.t()],
          coverage: [Fhir.InsurancePlanCoverage.t()],
          coverageArea: [Fhir.Reference.t()],
          endpoint: [Fhir.Reference.t()],
          extension: [Fhir.Extension.t()],
          identifier: [Fhir.Identifier.t()],
          meta: Fhir.Meta.t(),
          modifierExtension: [Fhir.Extension.t()],
          network: [Fhir.Reference.t()],
          ownedBy: Fhir.Reference.t(),
          period: Fhir.Period.t(),
          plan: [Fhir.InsurancePlanPlan.t()],
          text: Fhir.Narrative.t(),
          type: [Fhir.CodeableConcept.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:alias, :id, :implicitRules, :language, :name, :resourceType, :status])
    |> cast_embed(:_alias, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_implicitRules, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_name, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_status, with: &Fhir.Element.changeset/2)
    |> cast_embed(:administeredBy, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:contact, with: &Fhir.ExtendedContactDetail.changeset/2)
    |> cast_embed(:contained, with: &Fhir.ResourceList.changeset/2)
    |> cast_embed(:coverage, with: &Fhir.InsurancePlanCoverage.changeset/2)
    |> cast_embed(:coverageArea, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:endpoint, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:meta, with: &Fhir.Meta.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:network, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:ownedBy, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:period, with: &Fhir.Period.changeset/2)
    |> cast_embed(:plan, with: &Fhir.InsurancePlanPlan.changeset/2)
    |> cast_embed(:text, with: &Fhir.Narrative.changeset/2)
    |> cast_embed(:type, with: &Fhir.CodeableConcept.changeset/2)
    |> validate_format(:id, ~r/^[A-Za-z0-9\-\.]{1,64}$/)
    |> validate_format(:implicitRules, ~r/^\S*$/)
    |> validate_format(:language, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:name, ~r/^^[\s\S]+$$/)
    |> validate_format(:status, ~r/^[^\s]+( [^\s]+)*$/)
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
