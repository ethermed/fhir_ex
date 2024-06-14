defmodule Fhir.ProvenanceEntity do
  use TypedStruct

  typedstruct do
    field(:_role, Fhir.Element)
    field(:agent, [Fhir.ProvenanceAgent], default: [])
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:role, :string)
    field(:what, Fhir.Reference)
  end
end
