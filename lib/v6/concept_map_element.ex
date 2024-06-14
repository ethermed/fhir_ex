defmodule Fhir.v6().ConceptMapElement do
  use TypedStruct

  typedstruct do
    field(:_code, Fhir.v6().Element)
    field(:_display, Fhir.v6().Element)
    field(:_noMap, Fhir.v6().Element)
    field(:code, :string)
    field(:display, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:noMap, :boolean)
    field(:target, [Fhir.v6().ConceptMapTarget], default: [])
    field(:valueSet, :string)
  end
end
