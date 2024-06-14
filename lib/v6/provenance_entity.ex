defmodule Fhir.v6().ProvenanceEntity do
  use TypedStruct

  typedstruct do
    field(:_role, Fhir.v6().Element)
    field(:agent, [Fhir.v6().ProvenanceAgent], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:role, :string)
    field(:what, Fhir.v6().Reference)
  end
end
