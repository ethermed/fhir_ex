defmodule Fhir.v6().SubstanceDefinitionRepresentation do
  use TypedStruct

  typedstruct do
    field(:_representation, Fhir.v6().Element)
    field(:document, Fhir.v6().Reference)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:format, Fhir.v6().CodeableConcept)
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:representation, :string)
    field(:type, Fhir.v6().CodeableConcept)
  end
end
