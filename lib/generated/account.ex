defmodule Fhir.Account do
  @moduledoc """
  A financial tool for tracking value accrued for a particular purpose.  In the healthcare field, used to track charges for a patient, cost centers, etc.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:calculatedAt, :string)
    field(:description, :string)
    field(:id, :string)
    field(:implicitRules, :string)
    field(:language, :string)
    field(:name, :string)
    field(:resourceType, :string, default: "Account")
    field(:status, :string)
    embeds_one(:_calculatedAt, Fhir.Element)
    embeds_one(:_description, Fhir.Element)
    embeds_one(:_implicitRules, Fhir.Element)
    embeds_one(:_language, Fhir.Element)
    embeds_one(:_name, Fhir.Element)
    embeds_one(:_status, Fhir.Element)
    embeds_many(:balance, Fhir.AccountBalance)
    embeds_one(:billingStatus, Fhir.CodeableConcept)
    embeds_many(:contained, Fhir.ResourceList)
    embeds_many(:coverage, Fhir.AccountCoverage)
    embeds_one(:currency, Fhir.CodeableConcept)
    embeds_many(:diagnosis, Fhir.AccountDiagnosis)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:guarantor, Fhir.AccountGuarantor)
    embeds_many(:identifier, Fhir.Identifier)
    embeds_one(:meta, Fhir.Meta)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:owner, Fhir.Reference)
    embeds_many(:procedure, Fhir.AccountProcedure)
    embeds_many(:relatedAccount, Fhir.AccountRelatedAccount)
    embeds_one(:servicePeriod, Fhir.Period)
    embeds_many(:subject, Fhir.Reference)
    embeds_one(:text, Fhir.Narrative)
    embeds_one(:type, Fhir.CodeableConcept)
  end

  @type t :: %__MODULE__{
          calculatedAt: String.t(),
          description: String.t(),
          id: String.t(),
          implicitRules: String.t(),
          language: String.t(),
          name: String.t(),
          resourceType: String.t(),
          status: String.t(),
          _calculatedAt: Fhir.Element.t(),
          _description: Fhir.Element.t(),
          _implicitRules: Fhir.Element.t(),
          _language: Fhir.Element.t(),
          _name: Fhir.Element.t(),
          _status: Fhir.Element.t(),
          balance: [Fhir.AccountBalance.t()],
          billingStatus: Fhir.CodeableConcept.t(),
          contained: [Fhir.ResourceList.t()],
          coverage: [Fhir.AccountCoverage.t()],
          currency: Fhir.CodeableConcept.t(),
          diagnosis: [Fhir.AccountDiagnosis.t()],
          extension: [Fhir.Extension.t()],
          guarantor: [Fhir.AccountGuarantor.t()],
          identifier: [Fhir.Identifier.t()],
          meta: Fhir.Meta.t(),
          modifierExtension: [Fhir.Extension.t()],
          owner: Fhir.Reference.t(),
          procedure: [Fhir.AccountProcedure.t()],
          relatedAccount: [Fhir.AccountRelatedAccount.t()],
          servicePeriod: Fhir.Period.t(),
          subject: [Fhir.Reference.t()],
          text: Fhir.Narrative.t(),
          type: Fhir.CodeableConcept.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :calculatedAt,
      :description,
      :id,
      :implicitRules,
      :language,
      :name,
      :resourceType,
      :status
    ])
    |> cast_embed(:_calculatedAt, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_description, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_implicitRules, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_name, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_status, with: &Fhir.Element.changeset/2)
    |> cast_embed(:balance, with: &Fhir.AccountBalance.changeset/2)
    |> cast_embed(:billingStatus, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:contained, with: &Fhir.ResourceList.changeset/2)
    |> cast_embed(:coverage, with: &Fhir.AccountCoverage.changeset/2)
    |> cast_embed(:currency, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:diagnosis, with: &Fhir.AccountDiagnosis.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:guarantor, with: &Fhir.AccountGuarantor.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:meta, with: &Fhir.Meta.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:owner, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:procedure, with: &Fhir.AccountProcedure.changeset/2)
    |> cast_embed(:relatedAccount, with: &Fhir.AccountRelatedAccount.changeset/2)
    |> cast_embed(:servicePeriod, with: &Fhir.Period.changeset/2)
    |> cast_embed(:subject, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:text, with: &Fhir.Narrative.changeset/2)
    |> cast_embed(:type, with: &Fhir.CodeableConcept.changeset/2)
    |> validate_format(
      :calculatedAt,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00))$/
    )
    |> validate_format(:description, ~r/^^[\s\S]+$$/)
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
