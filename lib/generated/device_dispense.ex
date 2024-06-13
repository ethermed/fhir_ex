defmodule Fhir.Generated.DeviceDispense do
  use TypedStruct

  typedstruct do
    field :_implicitRules, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_preparedDate, Fhir.Generated.Element
        field :_status, Fhir.Generated.Element
        field :_usageInstruction, Fhir.Generated.Element
        field :_whenHandedOver, Fhir.Generated.Element
        field :basedOn, [Fhir.Generated.Reference], default: []
        field :category, [Fhir.Generated.CodeableConcept], default: []
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :destination, Fhir.Generated.Reference
        field :device, Fhir.Generated.CodeableReference
        field :encounter, Fhir.Generated.Reference
        field :eventHistory, [Fhir.Generated.Reference], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :implicitRules, :string
        field :language, :string
        field :location, Fhir.Generated.Reference
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :note, [Fhir.Generated.Annotation], default: []
        field :partOf, [Fhir.Generated.Reference], default: []
        field :performer, [Fhir.Generated.DeviceDispensePerformer], default: []
        field :preparedDate, :datetime
        field :quantity, Fhir.Generated.Quantity
        field :receiver, Fhir.Generated.Reference
        field :resourceType, :string, default: "DeviceDispense"
        field :status, :string
        field :statusReason, Fhir.Generated.CodeableReference
        field :subject, Fhir.Generated.Reference
        field :supportingInformation, [Fhir.Generated.Reference], default: []
        field :text, Fhir.Generated.Narrative
        field :type, Fhir.Generated.CodeableConcept
        field :usageInstruction, :string
        field :whenHandedOver, :datetime
  end
end
