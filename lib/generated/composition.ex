defmodule Fhir.Composition do
  use TypedStruct

  typedstruct do
    field(:_date, Fhir.Element)
    field(:_implicitRules, Fhir.Element)
    field(:_language, Fhir.Element)
    field(:_name, Fhir.Element)
    field(:_status, Fhir.Element)
    field(:_title, Fhir.Element)
    field(:_url, Fhir.Element)
    field(:_version, Fhir.Element)
    field(:attester, [Fhir.CompositionAttester], default: [])
    field(:author, [Fhir.Reference], default: [])
    field(:category, [Fhir.CodeableConcept], default: [])
    field(:contained, [Fhir.ResourceList], default: [])
    field(:custodian, Fhir.Reference)
    field(:date, :datetime)
    field(:encounter, Fhir.Reference)
    field(:event, [Fhir.CompositionEvent], default: [])
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:identifier, [Fhir.Identifier], default: [])
    field(:implicitRules, :string)
    field(:language, :string)
    field(:meta, Fhir.Meta)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:name, :string)
    field(:note, [Fhir.Annotation], default: [])
    field(:relatesTo, [Fhir.RelatedArtifact], default: [])
    field(:resourceType, :string, default: "Composition")
    field(:section, [Fhir.CompositionSection], default: [])
    field(:status, :string)
    field(:subject, [Fhir.Reference], default: [])
    field(:text, Fhir.Narrative)
    field(:title, :string)
    field(:type, Fhir.CodeableConcept)
    field(:url, :string)
    field(:useContext, [Fhir.UsageContext], default: [])
    field(:version, :string)
  end
end