defmodule Fhir.SubstanceSourceMaterialPartDescription do
  use TypedStruct

  typedstruct do
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:part, Fhir.CodeableConcept)
    field(:partLocation, Fhir.CodeableConcept)
  end
end
