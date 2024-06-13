defmodule Fhir.Generated.SubstanceDefinitionName do
  use TypedStruct

  typedstruct do
    field :_name, Fhir.Generated.Element
        field :_preferred, Fhir.Generated.Element
        field :domain, [Fhir.Generated.CodeableConcept], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :jurisdiction, [Fhir.Generated.CodeableConcept], default: []
        field :language, [Fhir.Generated.CodeableConcept], default: []
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :name, :string
        field :official, [Fhir.Generated.SubstanceDefinitionOfficial], default: []
        field :preferred, :boolean
        field :source, [Fhir.Generated.Reference], default: []
        field :status, Fhir.Generated.CodeableConcept
        field :synonym, [Fhir.Generated.SubstanceDefinitionName], default: []
        field :translation, [Fhir.Generated.SubstanceDefinitionName], default: []
        field :type, Fhir.Generated.CodeableConcept
  end
end
