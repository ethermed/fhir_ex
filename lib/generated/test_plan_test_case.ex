defmodule Fhir.Generated.TestPlanTestCase do
  use TypedStruct

  typedstruct do
    field :_sequence, Fhir.Generated.Element
        field :assertion, [Fhir.Generated.TestPlanAssertion], default: []
        field :dependency, [Fhir.Generated.TestPlanDependency1], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :scope, [Fhir.Generated.Reference], default: []
        field :sequence, :float
        field :testData, [Fhir.Generated.TestPlanTestData], default: []
        field :testRun, [Fhir.Generated.TestPlanTestRun], default: []
  end
end
