defmodule Fhir.v6().SpecimenProcessing do
  use TypedStruct

  typedstruct do
    field(:_description, Fhir.v6().Element)
    field(:_timeDateTime, Fhir.v6().Element)
    field(:additive, [Fhir.v6().Reference], default: [])
    field(:description, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:method, Fhir.v6().CodeableConcept)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:timeDateTime, :string)
    field(:timePeriod, Fhir.v6().Period)
  end
end
