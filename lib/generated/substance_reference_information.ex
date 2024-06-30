defmodule Fhir.SubstanceReferenceInformation do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_comment, Fhir.Element)
    field(:_implicitRules, Fhir.Element)
    field(:_language, Fhir.Element)
    field(:comment, :string)
    field(:contained, [Fhir.ResourceList], default: [])
    field(:extension, [Fhir.Extension], default: [])
    field(:gene, [Fhir.SubstanceReferenceInformationGene], default: [])
    field(:geneElement, [Fhir.SubstanceReferenceInformationGeneElement], default: [])
    field(:id, :string)
    field(:implicitRules, :string)
    field(:language, :string)
    field(:meta, Fhir.Meta)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:resourceType, :string, default: "SubstanceReferenceInformation")
    field(:target, [Fhir.SubstanceReferenceInformationTarget], default: [])
    field(:text, Fhir.Narrative)
  end
end
