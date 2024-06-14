defmodule Fhir.v6().SubstanceReferenceInformation do
  use TypedStruct

  typedstruct do
    field(:_comment, Fhir.v6().Element)
    field(:_implicitRules, Fhir.v6().Element)
    field(:_language, Fhir.v6().Element)
    field(:comment, :string)
    field(:contained, [Fhir.v6().ResourceList], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:gene, [Fhir.v6().SubstanceReferenceInformationGene], default: [])
    field(:geneElement, [Fhir.v6().SubstanceReferenceInformationGeneElement], default: [])
    field(:id, :string)
    field(:implicitRules, :string)
    field(:language, :string)
    field(:meta, Fhir.v6().Meta)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:resourceType, :string, default: "SubstanceReferenceInformation")
    field(:target, [Fhir.v6().SubstanceReferenceInformationTarget], default: [])
    field(:text, Fhir.v6().Narrative)
  end
end
