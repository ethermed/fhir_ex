defmodule Fhir.v6().SubstanceDefinitionSourceMaterial do
  use TypedStruct

  typedstruct do
    field(:countryOfOrigin, [Fhir.v6().CodeableConcept], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:genus, Fhir.v6().CodeableConcept)
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:part, Fhir.v6().CodeableConcept)
    field(:species, Fhir.v6().CodeableConcept)
    field(:type, Fhir.v6().CodeableConcept)
  end
end
