defmodule Fhir.Generated.AuditEventAgent do
  use TypedStruct

  typedstruct do
    field :_networkString, Fhir.Generated.Element
        field :_networkUri, Fhir.Generated.Element
        field :_policy, [Fhir.Generated.Element], default: []
        field :_requestor, Fhir.Generated.Element
        field :authorization, [Fhir.Generated.CodeableConcept], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :location, Fhir.Generated.Reference
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :networkReference, Fhir.Generated.Reference
        field :networkString, :string
        field :networkUri, :string
        field :policy, [:string], default: []
        field :requestor, :boolean
        field :role, [Fhir.Generated.CodeableConcept], default: []
        field :type, Fhir.Generated.CodeableConcept
        field :who, Fhir.Generated.Reference
  end
end
