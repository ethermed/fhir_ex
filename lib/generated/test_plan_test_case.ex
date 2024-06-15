defmodule Fhir.TestPlanTestCase do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_sequence, Fhir.Element
        field :assertion, [Fhir.TestPlanAssertion], default: []
        field :dependency, [Fhir.TestPlanDependency1], default: []
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Extension], default: []
        field :scope, [Fhir.Reference], default: []
        field :sequence, :float
        field :testData, [Fhir.TestPlanTestData], default: []
        field :testRun, [Fhir.TestPlanTestRun], default: []
  end
end
