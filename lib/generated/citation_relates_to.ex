defmodule Fhir.CitationRelatesTo do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_citation, Fhir.Element)
    field(:_display, Fhir.Element)
    field(:_label, Fhir.Element)
    field(:_resource, Fhir.Element)
    field(:_type, Fhir.Element)
    field(:citation, :string)
    field(:classifier, [Fhir.CodeableConcept], default: [])
    field(:display, :string)
    field(:document, Fhir.Attachment)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:label, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:resource, :string)
    field(:resourceReference, Fhir.Reference)
    field(:type, :string)
  end
end
