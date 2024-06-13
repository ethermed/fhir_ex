defmodule Fhir.Generated.CompositionSection do
  use TypedStruct

  typedstruct do
    field :_title, Fhir.Generated.Element
        field :author, [Fhir.Generated.Reference], default: []
        field :code, Fhir.Generated.CodeableConcept
        field :emptyReason, Fhir.Generated.CodeableConcept
        field :entry, [Fhir.Generated.Reference], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :focus, Fhir.Generated.Reference
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :orderedBy, Fhir.Generated.CodeableConcept
        field :section, [Fhir.Generated.CompositionSection], default: []
        field :text, Fhir.Generated.Narrative
        field :title, :string
  end
end
