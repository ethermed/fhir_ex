defmodule Fhir.AuditEventSource do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Extension], default: []
        field :observer, Fhir.Reference
        field :site, Fhir.Reference
        field :type, [Fhir.CodeableConcept], default: []
  end
end
