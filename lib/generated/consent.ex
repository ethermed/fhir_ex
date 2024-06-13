defmodule Fhir.Generated.Consent do
  use TypedStruct

  typedstruct do
    field :_date, Fhir.Generated.Element
        field :_decision, Fhir.Generated.Element
        field :_implicitRules, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_status, Fhir.Generated.Element
        field :category, [Fhir.Generated.CodeableConcept], default: []
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :controller, [Fhir.Generated.Reference], default: []
        field :date, :date
        field :decision, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :grantee, [Fhir.Generated.Reference], default: []
        field :grantor, [Fhir.Generated.Reference], default: []
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :implicitRules, :string
        field :language, :string
        field :manager, [Fhir.Generated.Reference], default: []
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :period, Fhir.Generated.Period
        field :policyBasis, Fhir.Generated.ConsentPolicyBasis
        field :policyText, [Fhir.Generated.Reference], default: []
        field :provision, [Fhir.Generated.ConsentProvision], default: []
        field :regulatoryBasis, [Fhir.Generated.CodeableConcept], default: []
        field :resourceType, :string, default: "Consent"
        field :sourceAttachment, [Fhir.Generated.Attachment], default: []
        field :sourceReference, [Fhir.Generated.Reference], default: []
        field :status, :string
        field :subject, Fhir.Generated.Reference
        field :text, Fhir.Generated.Narrative
        field :verification, [Fhir.Generated.ConsentVerification], default: []
  end
end
