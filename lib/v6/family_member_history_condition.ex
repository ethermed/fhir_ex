defmodule Fhir.v6().FamilyMemberHistoryCondition do
  use TypedStruct

  typedstruct do
    field(:_contributedToDeath, Fhir.v6().Element)
    field(:_onsetString, Fhir.v6().Element)
    field(:code, Fhir.v6().CodeableConcept)
    field(:contributedToDeath, :boolean)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:note, [Fhir.v6().Annotation], default: [])
    field(:onsetAge, Fhir.v6().Age)
    field(:onsetPeriod, Fhir.v6().Period)
    field(:onsetRange, Fhir.v6().Range)
    field(:onsetString, :string)
    field(:outcome, Fhir.v6().CodeableConcept)
  end
end
