defmodule Fhir.ImmunizationProgramEligibility do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:program, Fhir.CodeableConcept)
    field(:programStatus, Fhir.CodeableConcept)
  end
end
