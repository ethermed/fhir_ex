defmodule Fhir.SpecimenDefinitionAdditive do
  use TypedStruct

  typedstruct do
    field(:additiveCodeableConcept, Fhir.CodeableConcept)
    field(:additiveReference, Fhir.Reference)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
  end
end