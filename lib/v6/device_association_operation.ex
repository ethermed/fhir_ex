defmodule Fhir.v6().DeviceAssociationOperation do
  use TypedStruct

  typedstruct do
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:operator, [Fhir.v6().Reference], default: [])
    field(:period, Fhir.v6().Period)
    field(:status, Fhir.v6().CodeableConcept)
  end
end
