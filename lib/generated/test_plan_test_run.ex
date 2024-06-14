defmodule Fhir.TestPlanTestRun do
  use TypedStruct

  typedstruct do
    field(:_narrative, Fhir.Element)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:narrative, :string)
    field(:script, Fhir.TestPlanScript)
  end
end
