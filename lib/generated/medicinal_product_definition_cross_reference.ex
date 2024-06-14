defmodule Fhir.MedicinalProductDefinitionCrossReference do
  use TypedStruct

  typedstruct do
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:product, Fhir.CodeableReference)
    field(:type, Fhir.CodeableConcept)
  end
end