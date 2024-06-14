defmodule Fhir.SubstanceDefinitionRepresentation do
  use TypedStruct

  typedstruct do
    field(:_representation, Fhir.Element)
    field(:document, Fhir.Reference)
    field(:extension, [Fhir.Extension], default: [])
    field(:format, Fhir.CodeableConcept)
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:representation, :string)
    field(:type, Fhir.CodeableConcept)
  end
end
