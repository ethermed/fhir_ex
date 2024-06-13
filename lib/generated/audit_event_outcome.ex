defmodule Fhir.Generated.AuditEventOutcome do
  use TypedStruct

  typedstruct do
    field :code, Fhir.Generated.Coding
        field :detail, [Fhir.Generated.CodeableConcept], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
  end
end
