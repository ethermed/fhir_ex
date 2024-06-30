defmodule Fhir.CarePlanActivity do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:performedActivity, [Fhir.CodeableReference], default: [])
    field(:plannedActivityReference, Fhir.Reference)
    field(:progress, [Fhir.Annotation], default: [])
  end
end
