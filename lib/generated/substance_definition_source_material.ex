defmodule Fhir.SubstanceDefinitionSourceMaterial do
  use TypedStruct

  typedstruct do
    field(:countryOfOrigin, [Fhir.CodeableConcept], default: [])
    field(:extension, [Fhir.Extension], default: [])
    field(:genus, Fhir.CodeableConcept)
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:part, Fhir.CodeableConcept)
    field(:species, Fhir.CodeableConcept)
    field(:type, Fhir.CodeableConcept)
  end
end
