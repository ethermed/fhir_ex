defmodule Fhir.v6().MedicinalProductDefinitionUsage do
  use TypedStruct

  typedstruct do
    field(:country, Fhir.v6().CodeableConcept)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:jurisdiction, Fhir.v6().CodeableConcept)
    field(:language, Fhir.v6().CodeableConcept)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
  end
end
