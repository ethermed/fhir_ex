defmodule Fhir.MedicinalProductDefinitionContact do
  use TypedStruct

  typedstruct do
    field(:contact, Fhir.Reference)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:type, Fhir.CodeableConcept)
  end
end
