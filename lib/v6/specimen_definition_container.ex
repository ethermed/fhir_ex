defmodule Fhir.v6().SpecimenDefinitionContainer do
  use TypedStruct

  typedstruct do
    field(:_description, Fhir.v6().Element)
    field(:_minimumVolumeString, Fhir.v6().Element)
    field(:_preparation, Fhir.v6().Element)
    field(:additive, [Fhir.v6().SpecimenDefinitionAdditive], default: [])
    field(:cap, Fhir.v6().CodeableConcept)
    field(:capacity, Fhir.v6().Quantity)
    field(:description, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:material, Fhir.v6().CodeableConcept)
    field(:minimumVolumeQuantity, Fhir.v6().Quantity)
    field(:minimumVolumeString, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:preparation, :string)
    field(:type, Fhir.v6().CodeableConcept)
  end
end
