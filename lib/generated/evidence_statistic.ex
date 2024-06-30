defmodule Fhir.EvidenceStatistic do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_description, Fhir.Element)
    field(:_numberAffected, Fhir.Element)
    field(:_numberOfEvents, Fhir.Element)
    field(:attributeEstimate, [Fhir.EvidenceAttributeEstimate], default: [])
    field(:category, Fhir.CodeableConcept)
    field(:description, :string)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modelCharacteristic, [Fhir.EvidenceModelCharacteristic], default: [])
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:note, [Fhir.Annotation], default: [])
    field(:numberAffected, :float)
    field(:numberOfEvents, :float)
    field(:quantity, Fhir.Quantity)
    field(:sampleSize, Fhir.EvidenceSampleSize)
    field(:statisticType, Fhir.CodeableConcept)
  end
end
