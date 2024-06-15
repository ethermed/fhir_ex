defmodule Fhir.SubstanceReferenceInformationGene do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :extension, [Fhir.Extension], default: []
        field :gene, Fhir.CodeableConcept
        field :geneSequenceOrigin, Fhir.CodeableConcept
        field :id, :string
        field :modifierExtension, [Fhir.Extension], default: []
        field :source, [Fhir.Reference], default: []
  end
end
