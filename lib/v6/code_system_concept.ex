defmodule Fhir.v6().CodeSystemConcept do
  use TypedStruct

  typedstruct do
    field(:_code, Fhir.v6().Element)
    field(:_definition, Fhir.v6().Element)
    field(:_display, Fhir.v6().Element)
    field(:code, :string)
    field(:concept, [Fhir.v6().CodeSystemConcept], default: [])
    field(:definition, :string)
    field(:designation, [Fhir.v6().CodeSystemDesignation], default: [])
    field(:display, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:property, [Fhir.v6().CodeSystemProperty1], default: [])
  end
end
