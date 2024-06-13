defmodule Fhir.Generated.CarePlanActivity do
  use TypedStruct

  typedstruct do
    field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :performedActivity, [Fhir.Generated.CodeableReference], default: []
        field :plannedActivityReference, Fhir.Generated.Reference
        field :progress, [Fhir.Generated.Annotation], default: []
  end
end
