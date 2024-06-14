defmodule Fhir.v6().EvidenceAttributeEstimate do
  use TypedStruct

  typedstruct do
    field(:_description, Fhir.v6().Element)
    field(:_level, Fhir.v6().Element)
    field(:attributeEstimate, [Fhir.v6().EvidenceAttributeEstimate], default: [])
    field(:description, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:level, :decimal)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:note, [Fhir.v6().Annotation], default: [])
    field(:quantity, Fhir.v6().Quantity)
    field(:range, Fhir.v6().Range)
    field(:type, Fhir.v6().CodeableConcept)
  end
end
