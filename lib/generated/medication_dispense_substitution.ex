defmodule Fhir.MedicationDispenseSubstitution do
  use TypedStruct

  typedstruct do
    field(:_wasSubstituted, Fhir.Element)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:reason, [Fhir.CodeableConcept], default: [])
    field(:responsibleParty, Fhir.Reference)
    field(:type, Fhir.CodeableConcept)
    field(:wasSubstituted, :boolean)
  end
end
