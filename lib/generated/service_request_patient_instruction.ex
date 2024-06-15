defmodule Fhir.ServiceRequestPatientInstruction do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_instructionMarkdown, Fhir.Element
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :instructionMarkdown, :string
        field :instructionReference, Fhir.Reference
        field :modifierExtension, [Fhir.Extension], default: []
  end
end
