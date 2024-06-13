defmodule Fhir.Generated.AuditEventSource do
  use TypedStruct

  typedstruct do
    field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :observer, Fhir.Generated.Reference
        field :site, Fhir.Generated.Reference
        field :type, [Fhir.Generated.CodeableConcept], default: []
  end
end
