defmodule Fhir.Generated.TestPlanTestRun do
  use TypedStruct

  typedstruct do
    field :_narrative, Fhir.Generated.Element
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :narrative, :string
        field :script, Fhir.Generated.TestPlanScript
  end
end
