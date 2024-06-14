defmodule Fhir.v6().SubstancePolymerStartingMaterial do
  use TypedStruct

  typedstruct do
    field(:_isDefining, Fhir.v6().Element)
    field(:amount, Fhir.v6().Quantity)
    field(:category, Fhir.v6().CodeableConcept)
    field(:code, Fhir.v6().CodeableConcept)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:isDefining, :boolean)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
  end
end
