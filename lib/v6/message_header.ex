defmodule Fhir.v6().MessageHeader do
  use TypedStruct

  typedstruct do
    field(:_eventCanonical, Fhir.v6().Element)
    field(:_implicitRules, Fhir.v6().Element)
    field(:_language, Fhir.v6().Element)
    field(:author, Fhir.v6().Reference)
    field(:contained, [Fhir.v6().ResourceList], default: [])
    field(:definition, :string)
    field(:destination, [Fhir.v6().MessageHeaderDestination], default: [])
    field(:eventCanonical, :string)
    field(:eventCoding, Fhir.v6().Coding)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:focus, [Fhir.v6().Reference], default: [])
    field(:id, :string)
    field(:implicitRules, :string)
    field(:language, :string)
    field(:meta, Fhir.v6().Meta)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:reason, Fhir.v6().CodeableConcept)
    field(:resourceType, :string, default: "MessageHeader")
    field(:response, Fhir.v6().MessageHeaderResponse)
    field(:responsible, Fhir.v6().Reference)
    field(:sender, Fhir.v6().Reference)
    field(:source, Fhir.v6().MessageHeaderSource)
    field(:text, Fhir.v6().Narrative)
  end
end
