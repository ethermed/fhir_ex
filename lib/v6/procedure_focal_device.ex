defmodule Fhir.v6().ProcedureFocalDevice do
  use TypedStruct

  typedstruct do
    field(:action, Fhir.v6().CodeableConcept)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:manipulated, Fhir.v6().Reference)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
  end
end
