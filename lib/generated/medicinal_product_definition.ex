defmodule Fhir.MedicinalProductDefinition do
  @moduledoc """
  A medicinal product, being a substance or combination of substances that is intended to treat, prevent or diagnose a disease, or to restore, correct or modify physiological functions by exerting a pharmacological, immunological or metabolic action. This resource is intended to define and detail such products and their properties, for uses other than direct patient care (e.g. regulatory use, or drug catalogs).
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:statusDate, :string)
    field(:description, :string)
    field(:version, :string)
    field(:language, :string)
    field(:indication, :string)
    field(:resourceType, :string, default: "MedicinalProductDefinition")
    field(:implicitRules, :string)
    field(:id, :string)
    embeds_many(:operation, Fhir.MedicinalProductDefinitionOperation)
    embeds_many(:name, Fhir.MedicinalProductDefinitionName)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:masterFile, Fhir.Reference)
    embeds_many(:contained, Fhir.ResourceList)
    embeds_many(:marketingStatus, Fhir.MarketingStatus)
    embeds_many(:characteristic, Fhir.MedicinalProductDefinitionCharacteristic)
    embeds_one(:domain, Fhir.CodeableConcept)
    embeds_many(:crossReference, Fhir.MedicinalProductDefinitionCrossReference)
    embeds_one(:_implicitRules, Fhir.Element)
    embeds_one(:_statusDate, Fhir.Element)
    embeds_one(:legalStatusOfSupply, Fhir.CodeableConcept)
    embeds_many(:packagedMedicinalProduct, Fhir.CodeableConcept)
    embeds_one(:_indication, Fhir.Element)
    embeds_many(:ingredient, Fhir.CodeableConcept)
    embeds_many(:attachedDocument, Fhir.Reference)
    embeds_many(:comprisedOf, Fhir.Reference)
    embeds_one(:_description, Fhir.Element)
    embeds_one(:combinedPharmaceuticalDoseForm, Fhir.CodeableConcept)
    embeds_many(:route, Fhir.CodeableConcept)
    embeds_many(:clinicalTrial, Fhir.Reference)
    embeds_many(:code, Fhir.Coding)
    embeds_many(:contact, Fhir.MedicinalProductDefinitionContact)
    embeds_one(:additionalMonitoringIndicator, Fhir.CodeableConcept)
    embeds_one(:text, Fhir.Narrative)
    embeds_one(:_version, Fhir.Element)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:meta, Fhir.Meta)
    embeds_many(:impurity, Fhir.CodeableReference)
    embeds_many(:identifier, Fhir.Identifier)
    embeds_one(:type, Fhir.CodeableConcept)
    embeds_many(:classification, Fhir.CodeableConcept)
    embeds_one(:_language, Fhir.Element)
    embeds_one(:status, Fhir.CodeableConcept)
    embeds_one(:pediatricUseIndicator, Fhir.CodeableConcept)
    embeds_many(:specialMeasures, Fhir.CodeableConcept)
  end

  @type t :: %__MODULE__{
          statusDate: String.t(),
          description: String.t(),
          version: String.t(),
          language: String.t(),
          indication: String.t(),
          resourceType: String.t(),
          implicitRules: String.t(),
          id: String.t(),
          operation: [Fhir.MedicinalProductDefinitionOperation.t()],
          name: [Fhir.MedicinalProductDefinitionName.t()],
          extension: [Fhir.Extension.t()],
          masterFile: [Fhir.Reference.t()],
          contained: [Fhir.ResourceList.t()],
          marketingStatus: [Fhir.MarketingStatus.t()],
          characteristic: [Fhir.MedicinalProductDefinitionCharacteristic.t()],
          domain: Fhir.CodeableConcept.t(),
          crossReference: [Fhir.MedicinalProductDefinitionCrossReference.t()],
          _implicitRules: Fhir.Element.t(),
          _statusDate: Fhir.Element.t(),
          legalStatusOfSupply: Fhir.CodeableConcept.t(),
          packagedMedicinalProduct: [Fhir.CodeableConcept.t()],
          _indication: Fhir.Element.t(),
          ingredient: [Fhir.CodeableConcept.t()],
          attachedDocument: [Fhir.Reference.t()],
          comprisedOf: [Fhir.Reference.t()],
          _description: Fhir.Element.t(),
          combinedPharmaceuticalDoseForm: Fhir.CodeableConcept.t(),
          route: [Fhir.CodeableConcept.t()],
          clinicalTrial: [Fhir.Reference.t()],
          code: [Fhir.Coding.t()],
          contact: [Fhir.MedicinalProductDefinitionContact.t()],
          additionalMonitoringIndicator: Fhir.CodeableConcept.t(),
          text: Fhir.Narrative.t(),
          _version: Fhir.Element.t(),
          modifierExtension: [Fhir.Extension.t()],
          meta: Fhir.Meta.t(),
          impurity: [Fhir.CodeableReference.t()],
          identifier: [Fhir.Identifier.t()],
          type: Fhir.CodeableConcept.t(),
          classification: [Fhir.CodeableConcept.t()],
          _language: Fhir.Element.t(),
          status: Fhir.CodeableConcept.t(),
          pediatricUseIndicator: Fhir.CodeableConcept.t(),
          specialMeasures: [Fhir.CodeableConcept.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :statusDate,
      :description,
      :version,
      :language,
      :indication,
      :resourceType,
      :implicitRules,
      :id
    ])
    |> cast_embed(:operation, with: &Fhir.MedicinalProductDefinitionOperation.changeset/2)
    |> cast_embed(:name, with: &Fhir.MedicinalProductDefinitionName.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:masterFile, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:contained, with: &Fhir.ResourceList.changeset/2)
    |> cast_embed(:marketingStatus, with: &Fhir.MarketingStatus.changeset/2)
    |> cast_embed(:characteristic,
      with: &Fhir.MedicinalProductDefinitionCharacteristic.changeset/2
    )
    |> cast_embed(:domain, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:crossReference,
      with: &Fhir.MedicinalProductDefinitionCrossReference.changeset/2
    )
    |> cast_embed(:_implicitRules, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_statusDate, with: &Fhir.Element.changeset/2)
    |> cast_embed(:legalStatusOfSupply, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:packagedMedicinalProduct, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:_indication, with: &Fhir.Element.changeset/2)
    |> cast_embed(:ingredient, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:attachedDocument, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:comprisedOf, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:_description, with: &Fhir.Element.changeset/2)
    |> cast_embed(:combinedPharmaceuticalDoseForm, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:route, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:clinicalTrial, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:code, with: &Fhir.Coding.changeset/2)
    |> cast_embed(:contact, with: &Fhir.MedicinalProductDefinitionContact.changeset/2)
    |> cast_embed(:additionalMonitoringIndicator, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:text, with: &Fhir.Narrative.changeset/2)
    |> cast_embed(:_version, with: &Fhir.Element.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:meta, with: &Fhir.Meta.changeset/2)
    |> cast_embed(:impurity, with: &Fhir.CodeableReference.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:type, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:classification, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:status, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:pediatricUseIndicator, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:specialMeasures, with: &Fhir.CodeableConcept.changeset/2)
    |> validate_format(
      :statusDate,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?)?)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)?)?)?$/
    )
    |> validate_format(:description, ~r/^^[\s\S]+$$/)
    |> validate_format(:version, ~r/^^[\s\S]+$$/)
    |> validate_format(:language, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:indication, ~r/^^[\s\S]+$$/)
    |> validate_format(:implicitRules, ~r/^\S*$/)
    |> validate_format(:id, ~r/^[A-Za-z0-9\-\.]{1,64}$/)
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
