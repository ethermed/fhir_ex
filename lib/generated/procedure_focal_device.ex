defmodule Fhir.ProcedureFocalDevice do
  use TypedStruct

  typedstruct do
    field(:action, Fhir.CodeableConcept)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:manipulated, Fhir.Reference)
    field(:modifierExtension, [Fhir.Extension], default: [])
  end
end
