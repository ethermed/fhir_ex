defmodule Fhir.MedicationAdministrationPerformer do
  use TypedStruct

  typedstruct do
    field(:actor, Fhir.CodeableReference)
    field(:extension, [Fhir.Extension], default: [])
    field(:function, Fhir.CodeableConcept)
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
  end
end
