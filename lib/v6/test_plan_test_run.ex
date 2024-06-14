defmodule Fhir.v6().TestPlanTestRun do
  use TypedStruct

  typedstruct do
    field(:_narrative, Fhir.v6().Element)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:narrative, :string)
    field(:script, Fhir.v6().TestPlanScript)
  end
end
