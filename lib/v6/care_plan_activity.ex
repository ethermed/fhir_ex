defmodule Fhir.v6().CarePlanActivity do
  use TypedStruct

  typedstruct do
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:performedActivity, [Fhir.v6().CodeableReference], default: [])
    field(:plannedActivityReference, Fhir.v6().Reference)
    field(:progress, [Fhir.v6().Annotation], default: [])
  end
end
