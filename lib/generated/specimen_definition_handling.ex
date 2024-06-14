defmodule Fhir.SpecimenDefinitionHandling do
  use TypedStruct

  typedstruct do
    field(:_instruction, Fhir.Element)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:instruction, :string)
    field(:maxDuration, Fhir.Duration)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:temperatureQualifier, Fhir.CodeableConcept)
    field(:temperatureRange, Fhir.Range)
  end
end
