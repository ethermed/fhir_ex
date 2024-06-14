defmodule Fhir.v6().TestPlanDependency1 do
  use TypedStruct

  typedstruct do
    field(:_description, Fhir.v6().Element)
    field(:description, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:predecessor, Fhir.v6().Reference)
  end
end
