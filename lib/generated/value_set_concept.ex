defmodule Fhir.ValueSetConcept do
  use TypedStruct

  typedstruct do
    field(:_code, Fhir.Element)
    field(:_display, Fhir.Element)
    field(:code, :string)
    field(:designation, [Fhir.ValueSetDesignation], default: [])
    field(:display, :string)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
  end
end
