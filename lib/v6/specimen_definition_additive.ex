defmodule Fhir.v6().SpecimenDefinitionAdditive do
  use TypedStruct

  typedstruct do
    field(:additiveCodeableConcept, Fhir.v6().CodeableConcept)
    field(:additiveReference, Fhir.v6().Reference)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
  end
end
