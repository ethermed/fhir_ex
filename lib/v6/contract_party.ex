defmodule Fhir.v6().ContractParty do
  use TypedStruct

  typedstruct do
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:reference, [Fhir.v6().Reference], default: [])
    field(:role, Fhir.v6().CodeableConcept)
  end
end
