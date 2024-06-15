defmodule Fhir.BiologicallyDerivedProductDispense do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_implicitRules, Fhir.Element
        field :_language, Fhir.Element
        field :_preparedDate, Fhir.Element
        field :_status, Fhir.Element
        field :_usageInstruction, Fhir.Element
        field :_whenHandedOver, Fhir.Element
        field :basedOn, [Fhir.Reference], default: []
        field :contained, [Fhir.ResourceList], default: []
        field :destination, Fhir.Reference
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Identifier], default: []
        field :implicitRules, :string
        field :language, :string
        field :location, Fhir.Reference
        field :matchStatus, Fhir.CodeableConcept
        field :meta, Fhir.Meta
        field :modifierExtension, [Fhir.Extension], default: []
        field :note, [Fhir.Annotation], default: []
        field :originRelationshipType, Fhir.CodeableConcept
        field :partOf, [Fhir.Reference], default: []
        field :patient, Fhir.Reference
        field :performer, [Fhir.BiologicallyDerivedProductDispensePerformer], default: []
        field :preparedDate, :datetime
        field :product, Fhir.Reference
        field :quantity, Fhir.Quantity
        field :resourceType, :string, default: "BiologicallyDerivedProductDispense"
        field :status, :string
        field :text, Fhir.Narrative
        field :usageInstruction, :string
        field :whenHandedOver, :datetime
  end
end
