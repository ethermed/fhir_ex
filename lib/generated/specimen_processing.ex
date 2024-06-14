defmodule Fhir.SpecimenProcessing do
  use TypedStruct

  typedstruct do
    field(:_description, Fhir.Element)
    field(:_timeDateTime, Fhir.Element)
    field(:additive, [Fhir.Reference], default: [])
    field(:description, :string)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:method, Fhir.CodeableConcept)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:timeDateTime, :string)
    field(:timePeriod, Fhir.Period)
  end
end
