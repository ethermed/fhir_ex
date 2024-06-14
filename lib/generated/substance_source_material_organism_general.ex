defmodule Fhir.SubstanceSourceMaterialOrganismGeneral do
  use TypedStruct

  typedstruct do
    field(:class, Fhir.CodeableConcept)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:kingdom, Fhir.CodeableConcept)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:order, Fhir.CodeableConcept)
    field(:phylum, Fhir.CodeableConcept)
  end
end
