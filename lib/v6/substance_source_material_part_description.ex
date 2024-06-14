defmodule Fhir.v6().SubstanceSourceMaterialPartDescription do
  use TypedStruct

  typedstruct do
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:part, Fhir.v6().CodeableConcept)
    field(:partLocation, Fhir.v6().CodeableConcept)
  end
end
