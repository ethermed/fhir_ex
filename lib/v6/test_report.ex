defmodule Fhir.v6().TestReport do
  use TypedStruct

  typedstruct do
    field(:_implicitRules, Fhir.v6().Element)
    field(:_issued, Fhir.v6().Element)
    field(:_language, Fhir.v6().Element)
    field(:_name, Fhir.v6().Element)
    field(:_result, Fhir.v6().Element)
    field(:_score, Fhir.v6().Element)
    field(:_status, Fhir.v6().Element)
    field(:_tester, Fhir.v6().Element)
    field(:contained, [Fhir.v6().ResourceList], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:identifier, Fhir.v6().Identifier)
    field(:implicitRules, :string)
    field(:issued, :datetime)
    field(:language, :string)
    field(:meta, Fhir.v6().Meta)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:name, :string)
    field(:participant, [Fhir.v6().TestReportParticipant], default: [])
    field(:resourceType, :string, default: "TestReport")
    field(:result, :string)
    field(:score, :decimal)
    field(:setup, Fhir.v6().TestReportSetup)
    field(:status, :string)
    field(:teardown, Fhir.v6().TestReportTeardown)
    field(:test, [Fhir.v6().TestReportTest], default: [])
    field(:testScript, :string)
    field(:tester, :string)
    field(:text, Fhir.v6().Narrative)
  end
end
