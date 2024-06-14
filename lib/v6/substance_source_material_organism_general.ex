defmodule Fhir.v6().SubstanceSourceMaterialOrganismGeneral do
  use TypedStruct

  typedstruct do
    field(:class, Fhir.v6().CodeableConcept)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:kingdom, Fhir.v6().CodeableConcept)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:order, Fhir.v6().CodeableConcept)
    field(:phylum, Fhir.v6().CodeableConcept)
  end
end
