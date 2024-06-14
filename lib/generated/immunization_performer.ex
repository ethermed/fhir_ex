defmodule Fhir.ImmunizationPerformer do
  use TypedStruct

  typedstruct do
    field(:actor, Fhir.Reference)
    field(:extension, [Fhir.Extension], default: [])
    field(:function, Fhir.CodeableConcept)
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
  end
end
