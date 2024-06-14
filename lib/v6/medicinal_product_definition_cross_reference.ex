defmodule Fhir.v6().MedicinalProductDefinitionCrossReference do
  use TypedStruct

  typedstruct do
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:product, Fhir.v6().CodeableReference)
    field(:type, Fhir.v6().CodeableConcept)
  end
end
