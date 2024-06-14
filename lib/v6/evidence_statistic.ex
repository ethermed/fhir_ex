defmodule Fhir.v6().EvidenceStatistic do
  use TypedStruct

  typedstruct do
    field(:_description, Fhir.v6().Element)
    field(:_numberAffected, Fhir.v6().Element)
    field(:_numberOfEvents, Fhir.v6().Element)
    field(:attributeEstimate, [Fhir.v6().EvidenceAttributeEstimate], default: [])
    field(:category, Fhir.v6().CodeableConcept)
    field(:description, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modelCharacteristic, [Fhir.v6().EvidenceModelCharacteristic], default: [])
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:note, [Fhir.v6().Annotation], default: [])
    field(:numberAffected, :float)
    field(:numberOfEvents, :float)
    field(:quantity, Fhir.v6().Quantity)
    field(:sampleSize, Fhir.v6().EvidenceSampleSize)
    field(:statisticType, Fhir.v6().CodeableConcept)
  end
end
