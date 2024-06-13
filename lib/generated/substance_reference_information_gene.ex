defmodule Fhir.Generated.SubstanceReferenceInformationGene do
  use TypedStruct

  typedstruct do
    field :extension, [Fhir.Generated.Extension], default: []
        field :gene, Fhir.Generated.CodeableConcept
        field :geneSequenceOrigin, Fhir.Generated.CodeableConcept
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :source, [Fhir.Generated.Reference], default: []
  end
end
