defmodule Fhir.v6().SpecimenDefinitionHandling do
  use TypedStruct

  typedstruct do
    field(:_instruction, Fhir.v6().Element)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:instruction, :string)
    field(:maxDuration, Fhir.v6().Duration)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:temperatureQualifier, Fhir.v6().CodeableConcept)
    field(:temperatureRange, Fhir.v6().Range)
  end
end
