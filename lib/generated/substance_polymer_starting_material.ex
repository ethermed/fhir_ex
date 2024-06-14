defmodule Fhir.SubstancePolymerStartingMaterial do
  use TypedStruct

  typedstruct do
    field(:_isDefining, Fhir.Element)
    field(:amount, Fhir.Quantity)
    field(:category, Fhir.CodeableConcept)
    field(:code, Fhir.CodeableConcept)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:isDefining, :boolean)
    field(:modifierExtension, [Fhir.Extension], default: [])
  end
end
