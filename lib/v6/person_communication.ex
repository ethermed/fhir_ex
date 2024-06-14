defmodule Fhir.v6().PersonCommunication do
  use TypedStruct

  typedstruct do
    field(:_preferred, Fhir.v6().Element)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:language, Fhir.v6().CodeableConcept)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:preferred, :boolean)
  end
end
