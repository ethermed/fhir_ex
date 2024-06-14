defmodule Fhir.v6().SubstanceSourceMaterialHybrid do
  use TypedStruct

  typedstruct do
    field(:_maternalOrganismId, Fhir.v6().Element)
    field(:_maternalOrganismName, Fhir.v6().Element)
    field(:_paternalOrganismId, Fhir.v6().Element)
    field(:_paternalOrganismName, Fhir.v6().Element)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:hybridType, Fhir.v6().CodeableConcept)
    field(:id, :string)
    field(:maternalOrganismId, :string)
    field(:maternalOrganismName, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:paternalOrganismId, :string)
    field(:paternalOrganismName, :string)
  end
end
