defmodule Fhir.Specimen do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_combined, Fhir.Element
        field :_implicitRules, Fhir.Element
        field :_language, Fhir.Element
        field :_receivedTime, Fhir.Element
        field :_status, Fhir.Element
        field :accessionIdentifier, Fhir.Identifier
        field :collection, Fhir.SpecimenCollection
        field :combined, :string
        field :condition, [Fhir.CodeableConcept], default: []
        field :contained, [Fhir.ResourceList], default: []
        field :container, [Fhir.SpecimenContainer], default: []
        field :extension, [Fhir.Extension], default: []
        field :feature, [Fhir.SpecimenFeature], default: []
        field :id, :string
        field :identifier, [Fhir.Identifier], default: []
        field :implicitRules, :string
        field :language, :string
        field :meta, Fhir.Meta
        field :modifierExtension, [Fhir.Extension], default: []
        field :note, [Fhir.Annotation], default: []
        field :parent, [Fhir.Reference], default: []
        field :processing, [Fhir.SpecimenProcessing], default: []
        field :receivedTime, :datetime
        field :request, [Fhir.Reference], default: []
        field :resourceType, :string, default: "Specimen"
        field :role, [Fhir.CodeableConcept], default: []
        field :status, :string
        field :subject, Fhir.Reference
        field :text, Fhir.Narrative
        field :type, Fhir.CodeableConcept
  end
end
