defmodule Fhir.v6().RegulatedAuthorizationCase do
  use TypedStruct

  typedstruct do
    field(:_dateDateTime, Fhir.v6().Element)
    field(:application, [Fhir.v6().RegulatedAuthorizationCase], default: [])
    field(:dateDateTime, :string)
    field(:datePeriod, Fhir.v6().Period)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:identifier, Fhir.v6().Identifier)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:status, Fhir.v6().CodeableConcept)
    field(:type, Fhir.v6().CodeableConcept)
  end
end
