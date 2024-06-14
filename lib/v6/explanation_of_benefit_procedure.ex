defmodule Fhir.v6().ExplanationOfBenefitProcedure do
  use TypedStruct

  typedstruct do
    field(:_date, Fhir.v6().Element)
    field(:_sequence, Fhir.v6().Element)
    field(:date, :datetime)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:procedureCodeableConcept, Fhir.v6().CodeableConcept)
    field(:procedureReference, Fhir.v6().Reference)
    field(:sequence, :float)
    field(:type, [Fhir.v6().CodeableConcept], default: [])
    field(:udi, [Fhir.v6().Reference], default: [])
  end
end
