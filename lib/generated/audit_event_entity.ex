defmodule Fhir.Generated.AuditEventEntity do
  use TypedStruct

  typedstruct do
    field :_query, Fhir.Generated.Element
        field :agent, [Fhir.Generated.AuditEventAgent], default: []
        field :detail, [Fhir.Generated.AuditEventDetail], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :query, :string
        field :role, Fhir.Generated.CodeableConcept
        field :securityLabel, [Fhir.Generated.CodeableConcept], default: []
        field :what, Fhir.Generated.Reference
  end
end
