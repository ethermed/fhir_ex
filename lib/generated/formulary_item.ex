defmodule Fhir.FormularyItem do
  use TypedStruct

  typedstruct do
    field(:_implicitRules, Fhir.Element)
    field(:_language, Fhir.Element)
    field(:_status, Fhir.Element)
    field(:code, Fhir.CodeableConcept)
    field(:contained, [Fhir.ResourceList], default: [])
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:identifier, [Fhir.Identifier], default: [])
    field(:implicitRules, :string)
    field(:language, :string)
    field(:meta, Fhir.Meta)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:resourceType, :string, default: "FormularyItem")
    field(:status, :string)
    field(:text, Fhir.Narrative)
  end
end
