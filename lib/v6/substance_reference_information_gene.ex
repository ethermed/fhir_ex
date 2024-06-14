defmodule Fhir.v6().SubstanceReferenceInformationGene do
  use TypedStruct

  typedstruct do
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:gene, Fhir.v6().CodeableConcept)
    field(:geneSequenceOrigin, Fhir.v6().CodeableConcept)
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:source, [Fhir.v6().Reference], default: [])
  end
end
