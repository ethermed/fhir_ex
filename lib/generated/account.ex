defmodule Fhir.Generated.Account do
  use TypedStruct

  typedstruct do
    field :_calculatedAt, Fhir.Generated.Element
        field :_description, Fhir.Generated.Element
        field :_implicitRules, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_name, Fhir.Generated.Element
        field :_status, Fhir.Generated.Element
        field :balance, [Fhir.Generated.AccountBalance], default: []
        field :billingStatus, Fhir.Generated.CodeableConcept
        field :calculatedAt, :timestamp
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :coverage, [Fhir.Generated.AccountCoverage], default: []
        field :currency, Fhir.Generated.CodeableConcept
        field :description, :string
        field :diagnosis, [Fhir.Generated.AccountDiagnosis], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :guarantor, [Fhir.Generated.AccountGuarantor], default: []
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :implicitRules, :string
        field :language, :string
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :name, :string
        field :owner, Fhir.Generated.Reference
        field :procedure, [Fhir.Generated.AccountProcedure], default: []
        field :relatedAccount, [Fhir.Generated.AccountRelatedAccount], default: []
        field :resourceType, :string, default: "Account"
        field :servicePeriod, Fhir.Generated.Period
        field :status, :string
        field :subject, [Fhir.Generated.Reference], default: []
        field :text, Fhir.Generated.Narrative
        field :type, Fhir.Generated.CodeableConcept
  end
end
