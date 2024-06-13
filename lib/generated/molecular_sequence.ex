defmodule Fhir.Generated.MolecularSequence do
  use TypedStruct

  typedstruct do
    field :_implicitRules, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_literal, Fhir.Generated.Element
        field :_type, Fhir.Generated.Element
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :device, Fhir.Generated.Reference
        field :extension, [Fhir.Generated.Extension], default: []
        field :focus, [Fhir.Generated.Reference], default: []
        field :formatted, [Fhir.Generated.Attachment], default: []
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :implicitRules, :string
        field :language, :string
        field :literal, :string
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :performer, Fhir.Generated.Reference
        field :relative, [Fhir.Generated.MolecularSequenceRelative], default: []
        field :resourceType, :string, default: "MolecularSequence"
        field :specimen, Fhir.Generated.Reference
        field :subject, Fhir.Generated.Reference
        field :text, Fhir.Generated.Narrative
        field :type, :string
  end
end
