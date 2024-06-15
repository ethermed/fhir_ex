defmodule Fhir.DeviceDispense do
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
        field :category, [Fhir.CodeableConcept], default: []
        field :contained, [Fhir.ResourceList], default: []
        field :destination, Fhir.Reference
        field :device, Fhir.CodeableReference
        field :encounter, Fhir.Reference
        field :eventHistory, [Fhir.Reference], default: []
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Identifier], default: []
        field :implicitRules, :string
        field :language, :string
        field :location, Fhir.Reference
        field :meta, Fhir.Meta
        field :modifierExtension, [Fhir.Extension], default: []
        field :note, [Fhir.Annotation], default: []
        field :partOf, [Fhir.Reference], default: []
        field :performer, [Fhir.DeviceDispensePerformer], default: []
        field :preparedDate, :datetime
        field :quantity, Fhir.Quantity
        field :receiver, Fhir.Reference
        field :resourceType, :string, default: "DeviceDispense"
        field :status, :string
        field :statusReason, Fhir.CodeableReference
        field :subject, Fhir.Reference
        field :supportingInformation, [Fhir.Reference], default: []
        field :text, Fhir.Narrative
        field :type, Fhir.CodeableConcept
        field :usageInstruction, :string
        field :whenHandedOver, :datetime
  end
end
