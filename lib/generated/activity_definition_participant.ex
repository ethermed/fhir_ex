defmodule Fhir.ActivityDefinitionParticipant do
  use TypedStruct

  typedstruct do
    field(:_type, Fhir.Element)
    field(:extension, [Fhir.Extension], default: [])
    field(:function, Fhir.CodeableConcept)
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:role, Fhir.CodeableConcept)
    field(:type, :string)
    field(:typeCanonical, :string)
    field(:typeReference, Fhir.Reference)
  end
end
