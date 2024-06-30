defmodule Fhir.MessageHeader do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_eventCanonical, Fhir.Element)
    field(:_implicitRules, Fhir.Element)
    field(:_language, Fhir.Element)
    field(:author, Fhir.Reference)
    field(:contained, [Fhir.ResourceList], default: [])
    field(:definition, :string)
    field(:destination, [Fhir.MessageHeaderDestination], default: [])
    field(:eventCanonical, :string)
    field(:eventCoding, Fhir.Coding)
    field(:extension, [Fhir.Extension], default: [])
    field(:focus, [Fhir.Reference], default: [])
    field(:id, :string)
    field(:implicitRules, :string)
    field(:language, :string)
    field(:meta, Fhir.Meta)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:reason, Fhir.CodeableConcept)
    field(:resourceType, :string, default: "MessageHeader")
    field(:response, Fhir.MessageHeaderResponse)
    field(:responsible, Fhir.Reference)
    field(:sender, Fhir.Reference)
    field(:source, Fhir.MessageHeaderSource)
    field(:text, Fhir.Narrative)
  end
end
