defmodule Fhir.FamilyMemberHistoryProcedure do
  use TypedStruct

  typedstruct do
    field(:_contributedToDeath, Fhir.Element)
    field(:_performedDateTime, Fhir.Element)
    field(:_performedString, Fhir.Element)
    field(:code, Fhir.CodeableConcept)
    field(:contributedToDeath, :boolean)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:note, [Fhir.Annotation], default: [])
    field(:outcome, Fhir.CodeableConcept)
    field(:performedAge, Fhir.Age)
    field(:performedDateTime, :string)
    field(:performedPeriod, Fhir.Period)
    field(:performedRange, Fhir.Range)
    field(:performedString, :string)
  end
end
