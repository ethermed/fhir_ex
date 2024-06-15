defmodule Fhir.TestReport do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_implicitRules, Fhir.Element
        field :_issued, Fhir.Element
        field :_language, Fhir.Element
        field :_name, Fhir.Element
        field :_result, Fhir.Element
        field :_score, Fhir.Element
        field :_status, Fhir.Element
        field :_tester, Fhir.Element
        field :contained, [Fhir.ResourceList], default: []
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :identifier, Fhir.Identifier
        field :implicitRules, :string
        field :issued, :datetime
        field :language, :string
        field :meta, Fhir.Meta
        field :modifierExtension, [Fhir.Extension], default: []
        field :name, :string
        field :participant, [Fhir.TestReportParticipant], default: []
        field :resourceType, :string, default: "TestReport"
        field :result, :string
        field :score, :decimal
        field :setup, Fhir.TestReportSetup
        field :status, :string
        field :teardown, Fhir.TestReportTeardown
        field :test, [Fhir.TestReportTest], default: []
        field :testScript, :string
        field :tester, :string
        field :text, Fhir.Narrative
  end
end
