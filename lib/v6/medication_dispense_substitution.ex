defmodule Fhir.v6().MedicationDispenseSubstitution do
  use TypedStruct

  typedstruct do
    field(:_wasSubstituted, Fhir.v6().Element)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:reason, [Fhir.v6().CodeableConcept], default: [])
    field(:responsibleParty, Fhir.v6().Reference)
    field(:type, Fhir.v6().CodeableConcept)
    field(:wasSubstituted, :boolean)
  end
end
