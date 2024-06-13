defmodule Fhir.Generated.SubstanceNucleicAcid do
  use TypedStruct

  typedstruct do
    field :_areaOfHybridisation, Fhir.Generated.Element
        field :_implicitRules, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_numberOfSubunits, Fhir.Generated.Element
        field :areaOfHybridisation, :string
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :implicitRules, :string
        field :language, :string
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :numberOfSubunits, :float
        field :oligoNucleotideType, Fhir.Generated.CodeableConcept
        field :resourceType, :string, default: "SubstanceNucleicAcid"
        field :sequenceType, Fhir.Generated.CodeableConcept
        field :subunit, [Fhir.Generated.SubstanceNucleicAcidSubunit], default: []
        field :text, Fhir.Generated.Narrative
  end
end
