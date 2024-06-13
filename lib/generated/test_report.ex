defmodule Fhir.Generated.TestReport do
  use TypedStruct

  typedstruct do
    field :_implicitRules, Fhir.Generated.Element
        field :_issued, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_name, Fhir.Generated.Element
        field :_result, Fhir.Generated.Element
        field :_score, Fhir.Generated.Element
        field :_status, Fhir.Generated.Element
        field :_tester, Fhir.Generated.Element
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :identifier, Fhir.Generated.Identifier
        field :implicitRules, :string
        field :issued, :datetime
        field :language, :string
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :name, :string
        field :participant, [Fhir.Generated.TestReportParticipant], default: []
        field :resourceType, :string, default: "TestReport"
        field :result, :string
        field :score, :decimal
        field :setup, Fhir.Generated.TestReportSetup
        field :status, :string
        field :teardown, Fhir.Generated.TestReportTeardown
        field :test, [Fhir.Generated.TestReportTest], default: []
        field :testScript, :string
        field :tester, :string
        field :text, Fhir.Generated.Narrative
  end
end
