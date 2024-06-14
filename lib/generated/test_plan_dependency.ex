defmodule Fhir.TestPlanDependency do
  use TypedStruct

  typedstruct do
    field(:_description, Fhir.Element)
    field(:description, :string)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:predecessor, Fhir.Reference)
  end
end
