defmodule Fhir.v6().SubstancePolymerMonomerSet do
  use TypedStruct

  typedstruct do
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:ratioType, Fhir.v6().CodeableConcept)
    field(:startingMaterial, [Fhir.v6().SubstancePolymerStartingMaterial], default: [])
  end
end
