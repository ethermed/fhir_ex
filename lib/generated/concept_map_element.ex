defmodule Fhir.ConceptMapElement do
  use TypedStruct

  typedstruct do
    field(:_code, Fhir.Element)
    field(:_display, Fhir.Element)
    field(:_noMap, Fhir.Element)
    field(:code, :string)
    field(:display, :string)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:noMap, :boolean)
    field(:target, [Fhir.ConceptMapTarget], default: [])
    field(:valueSet, :string)
  end
end
