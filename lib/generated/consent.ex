defmodule Fhir.Consent do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_date, Fhir.Element
        field :_decision, Fhir.Element
        field :_implicitRules, Fhir.Element
        field :_language, Fhir.Element
        field :_status, Fhir.Element
        field :category, [Fhir.CodeableConcept], default: []
        field :contained, [Fhir.ResourceList], default: []
        field :controller, [Fhir.Reference], default: []
        field :date, :date
        field :decision, :string
        field :extension, [Fhir.Extension], default: []
        field :grantee, [Fhir.Reference], default: []
        field :grantor, [Fhir.Reference], default: []
        field :id, :string
        field :identifier, [Fhir.Identifier], default: []
        field :implicitRules, :string
        field :language, :string
        field :manager, [Fhir.Reference], default: []
        field :meta, Fhir.Meta
        field :modifierExtension, [Fhir.Extension], default: []
        field :period, Fhir.Period
        field :policyBasis, Fhir.ConsentPolicyBasis
        field :policyText, [Fhir.Reference], default: []
        field :provision, [Fhir.ConsentProvision], default: []
        field :regulatoryBasis, [Fhir.CodeableConcept], default: []
        field :resourceType, :string, default: "Consent"
        field :sourceAttachment, [Fhir.Attachment], default: []
        field :sourceReference, [Fhir.Reference], default: []
        field :status, :string
        field :subject, Fhir.Reference
        field :text, Fhir.Narrative
        field :verification, [Fhir.ConsentVerification], default: []
  end
end
