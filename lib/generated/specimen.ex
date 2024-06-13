defmodule Fhir.Generated.Specimen do
  use TypedStruct

  typedstruct do
    field :_combined, Fhir.Generated.Element
        field :_implicitRules, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_receivedTime, Fhir.Generated.Element
        field :_status, Fhir.Generated.Element
        field :accessionIdentifier, Fhir.Generated.Identifier
        field :collection, Fhir.Generated.SpecimenCollection
        field :combined, :string
        field :condition, [Fhir.Generated.CodeableConcept], default: []
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :container, [Fhir.Generated.SpecimenContainer], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :feature, [Fhir.Generated.SpecimenFeature], default: []
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :implicitRules, :string
        field :language, :string
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :note, [Fhir.Generated.Annotation], default: []
        field :parent, [Fhir.Generated.Reference], default: []
        field :processing, [Fhir.Generated.SpecimenProcessing], default: []
        field :receivedTime, :datetime
        field :request, [Fhir.Generated.Reference], default: []
        field :resourceType, :string, default: "Specimen"
        field :role, [Fhir.Generated.CodeableConcept], default: []
        field :status, :string
        field :subject, Fhir.Generated.Reference
        field :text, Fhir.Generated.Narrative
        field :type, Fhir.Generated.CodeableConcept
  end
end
