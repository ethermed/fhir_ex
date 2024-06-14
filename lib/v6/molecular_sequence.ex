defmodule Fhir.v6().MolecularSequence do
  use TypedStruct

  typedstruct do
    field(:_implicitRules, Fhir.v6().Element)
    field(:_language, Fhir.v6().Element)
    field(:_literal, Fhir.v6().Element)
    field(:_type, Fhir.v6().Element)
    field(:contained, [Fhir.v6().ResourceList], default: [])
    field(:device, Fhir.v6().Reference)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:focus, [Fhir.v6().Reference], default: [])
    field(:formatted, [Fhir.v6().Attachment], default: [])
    field(:id, :string)
    field(:identifier, [Fhir.v6().Identifier], default: [])
    field(:implicitRules, :string)
    field(:language, :string)
    field(:literal, :string)
    field(:meta, Fhir.v6().Meta)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:performer, Fhir.v6().Reference)
    field(:relative, [Fhir.v6().MolecularSequenceRelative], default: [])
    field(:resourceType, :string, default: "MolecularSequence")
    field(:specimen, Fhir.v6().Reference)
    field(:subject, Fhir.v6().Reference)
    field(:text, Fhir.v6().Narrative)
    field(:type, :string)
  end
end
