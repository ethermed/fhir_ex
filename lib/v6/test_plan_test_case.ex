defmodule Fhir.v6().TestPlanTestCase do
  use TypedStruct

  typedstruct do
    field(:_sequence, Fhir.v6().Element)
    field(:assertion, [Fhir.v6().TestPlanAssertion], default: [])
    field(:dependency, [Fhir.v6().TestPlanDependency1], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:scope, [Fhir.v6().Reference], default: [])
    field(:sequence, :float)
    field(:testData, [Fhir.v6().TestPlanTestData], default: [])
    field(:testRun, [Fhir.v6().TestPlanTestRun], default: [])
  end
end
