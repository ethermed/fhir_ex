defmodule Fhir.v6().ServiceRequestPatientInstruction do
  use TypedStruct

  typedstruct do
    field(:_instructionMarkdown, Fhir.v6().Element)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:instructionMarkdown, :string)
    field(:instructionReference, Fhir.v6().Reference)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
  end
end
