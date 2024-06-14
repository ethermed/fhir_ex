defmodule Fhir.v6().FamilyMemberHistoryProcedure do
  use TypedStruct

  typedstruct do
    field(:_contributedToDeath, Fhir.v6().Element)
    field(:_performedDateTime, Fhir.v6().Element)
    field(:_performedString, Fhir.v6().Element)
    field(:code, Fhir.v6().CodeableConcept)
    field(:contributedToDeath, :boolean)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:note, [Fhir.v6().Annotation], default: [])
    field(:outcome, Fhir.v6().CodeableConcept)
    field(:performedAge, Fhir.v6().Age)
    field(:performedDateTime, :string)
    field(:performedPeriod, Fhir.v6().Period)
    field(:performedRange, Fhir.v6().Range)
    field(:performedString, :string)
  end
end
