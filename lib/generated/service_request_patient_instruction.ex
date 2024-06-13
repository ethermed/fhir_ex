defmodule Fhir.Generated.ServiceRequestPatientInstruction do
  use TypedStruct

  typedstruct do
    field :_instructionMarkdown, Fhir.Generated.Element
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :instructionMarkdown, :string
        field :instructionReference, Fhir.Generated.Reference
        field :modifierExtension, [Fhir.Generated.Extension], default: []
  end
end
