defmodule Fhir.Generated.RegulatedAuthorization do
  use TypedStruct

  typedstruct do
    field :_description, Fhir.Generated.Element
        field :_implicitRules, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_statusDate, Fhir.Generated.Element
        field :attachedDocument, [Fhir.Generated.Reference], default: []
        field :basis, [Fhir.Generated.CodeableConcept], default: []
        field :case, Fhir.Generated.RegulatedAuthorizationCase
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :description, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :holder, Fhir.Generated.Reference
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :implicitRules, :string
        field :indication, [Fhir.Generated.CodeableReference], default: []
        field :intendedUse, Fhir.Generated.CodeableConcept
        field :language, :string
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :region, [Fhir.Generated.CodeableConcept], default: []
        field :regulator, Fhir.Generated.Reference
        field :resourceType, :string, default: "RegulatedAuthorization"
        field :status, Fhir.Generated.CodeableConcept
        field :statusDate, :datetime
        field :subject, [Fhir.Generated.Reference], default: []
        field :text, Fhir.Generated.Narrative
        field :type, Fhir.Generated.CodeableConcept
        field :validityPeriod, Fhir.Generated.Period
  end
end
