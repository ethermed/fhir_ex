defmodule Fhir.Generated.BiologicallyDerivedProductDispense do
  use TypedStruct

  typedstruct do
    field :_implicitRules, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_preparedDate, Fhir.Generated.Element
        field :_status, Fhir.Generated.Element
        field :_usageInstruction, Fhir.Generated.Element
        field :_whenHandedOver, Fhir.Generated.Element
        field :basedOn, [Fhir.Generated.Reference], default: []
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :destination, Fhir.Generated.Reference
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :implicitRules, :string
        field :language, :string
        field :location, Fhir.Generated.Reference
        field :matchStatus, Fhir.Generated.CodeableConcept
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :note, [Fhir.Generated.Annotation], default: []
        field :originRelationshipType, Fhir.Generated.CodeableConcept
        field :partOf, [Fhir.Generated.Reference], default: []
        field :patient, Fhir.Generated.Reference
        field :performer, [Fhir.Generated.BiologicallyDerivedProductDispensePerformer], default: []
        field :preparedDate, :datetime
        field :product, Fhir.Generated.Reference
        field :quantity, Fhir.Generated.Quantity
        field :resourceType, :string, default: "BiologicallyDerivedProductDispense"
        field :status, :string
        field :text, Fhir.Generated.Narrative
        field :usageInstruction, :string
        field :whenHandedOver, :datetime
  end
end
