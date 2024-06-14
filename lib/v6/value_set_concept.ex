defmodule Fhir.v6().ValueSetConcept do
  use TypedStruct

  typedstruct do
    field(:_code, Fhir.v6().Element)
    field(:_display, Fhir.v6().Element)
    field(:code, :string)
    field(:designation, [Fhir.v6().ValueSetDesignation], default: [])
    field(:display, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
  end
end
