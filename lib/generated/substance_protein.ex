defmodule Fhir.Generated.SubstanceProtein do
  use TypedStruct

  typedstruct do
    field :_disulfideLinkage, [Fhir.Generated.Element], default: []
        field :_implicitRules, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_numberOfSubunits, Fhir.Generated.Element
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :disulfideLinkage, [:string], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :implicitRules, :string
        field :language, :string
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :numberOfSubunits, :float
        field :resourceType, :string, default: "SubstanceProtein"
        field :sequenceType, Fhir.Generated.CodeableConcept
        field :subunit, [Fhir.Generated.SubstanceProteinSubunit], default: []
        field :text, Fhir.Generated.Narrative
  end
end
