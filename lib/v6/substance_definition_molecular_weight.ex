defmodule Fhir.v6().SubstanceDefinitionMolecularWeight do
  use TypedStruct

  typedstruct do
    field(:amount, Fhir.v6().Quantity)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:method, Fhir.v6().CodeableConcept)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:type, Fhir.v6().CodeableConcept)
  end
end
