defmodule Fhir.Generated.SubstancePolymer do
  use TypedStruct

  typedstruct do
    field :_implicitRules, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_modification, Fhir.Generated.Element
        field :class, Fhir.Generated.CodeableConcept
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :copolymerConnectivity, [Fhir.Generated.CodeableConcept], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :geometry, Fhir.Generated.CodeableConcept
        field :id, :string
        field :identifier, Fhir.Generated.Identifier
        field :implicitRules, :string
        field :language, :string
        field :meta, Fhir.Generated.Meta
        field :modification, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :monomerSet, [Fhir.Generated.SubstancePolymerMonomerSet], default: []
        field :repeat, [Fhir.Generated.SubstancePolymerRepeat], default: []
        field :resourceType, :string, default: "SubstancePolymer"
        field :text, Fhir.Generated.Narrative
  end
end
