defmodule Fhir.Generated.SubstanceReferenceInformation do
  use TypedStruct

  typedstruct do
    field :_comment, Fhir.Generated.Element
        field :_implicitRules, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :comment, :string
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :gene, [Fhir.Generated.SubstanceReferenceInformationGene], default: []
        field :geneElement, [Fhir.Generated.SubstanceReferenceInformationGeneElement], default: []
        field :id, :string
        field :implicitRules, :string
        field :language, :string
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :resourceType, :string, default: "SubstanceReferenceInformation"
        field :target, [Fhir.Generated.SubstanceReferenceInformationTarget], default: []
        field :text, Fhir.Generated.Narrative
  end
end
