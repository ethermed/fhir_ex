defmodule Fhir.FamilyMemberHistoryCondition do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_contributedToDeath, Fhir.Element)
    field(:_onsetString, Fhir.Element)
    field(:code, Fhir.CodeableConcept)
    field(:contributedToDeath, :boolean)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:note, [Fhir.Annotation], default: [])
    field(:onsetAge, Fhir.Age)
    field(:onsetPeriod, Fhir.Period)
    field(:onsetRange, Fhir.Range)
    field(:onsetString, :string)
    field(:outcome, Fhir.CodeableConcept)
  end
end
