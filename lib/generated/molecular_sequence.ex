defmodule Fhir.MolecularSequence do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_implicitRules, Fhir.Element
        field :_language, Fhir.Element
        field :_literal, Fhir.Element
        field :_type, Fhir.Element
        field :contained, [Fhir.ResourceList], default: []
        field :device, Fhir.Reference
        field :extension, [Fhir.Extension], default: []
        field :focus, [Fhir.Reference], default: []
        field :formatted, [Fhir.Attachment], default: []
        field :id, :string
        field :identifier, [Fhir.Identifier], default: []
        field :implicitRules, :string
        field :language, :string
        field :literal, :string
        field :meta, Fhir.Meta
        field :modifierExtension, [Fhir.Extension], default: []
        field :performer, Fhir.Reference
        field :relative, [Fhir.MolecularSequenceRelative], default: []
        field :resourceType, :string, default: "MolecularSequence"
        field :specimen, Fhir.Reference
        field :subject, Fhir.Reference
        field :text, Fhir.Narrative
        field :type, :string
  end
end
