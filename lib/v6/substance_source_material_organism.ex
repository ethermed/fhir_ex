defmodule Fhir.v6().SubstanceSourceMaterialOrganism do
  use TypedStruct

  typedstruct do
    field(:_intraspecificDescription, Fhir.v6().Element)
    field(:author, [Fhir.v6().SubstanceSourceMaterialAuthor], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:family, Fhir.v6().CodeableConcept)
    field(:genus, Fhir.v6().CodeableConcept)
    field(:hybrid, Fhir.v6().SubstanceSourceMaterialHybrid)
    field(:id, :string)
    field(:intraspecificDescription, :string)
    field(:intraspecificType, Fhir.v6().CodeableConcept)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:organismGeneral, Fhir.v6().SubstanceSourceMaterialOrganismGeneral)
    field(:species, Fhir.v6().CodeableConcept)
  end
end
