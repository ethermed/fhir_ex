defmodule Fhir.CodeSystemConcept do
  use TypedStruct

  typedstruct do
    field(:_code, Fhir.Element)
    field(:_definition, Fhir.Element)
    field(:_display, Fhir.Element)
    field(:code, :string)
    field(:concept, [Fhir.CodeSystemConcept], default: [])
    field(:definition, :string)
    field(:designation, [Fhir.CodeSystemDesignation], default: [])
    field(:display, :string)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:property, [Fhir.CodeSystemProperty1], default: [])
  end
end
