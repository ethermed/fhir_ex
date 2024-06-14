defmodule Fhir.v6().TestPlanTestData do
  use TypedStruct

  typedstruct do
    field(:_sourceString, Fhir.v6().Element)
    field(:content, Fhir.v6().Reference)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:sourceReference, Fhir.v6().Reference)
    field(:sourceString, :string)
    field(:type, Fhir.v6().Coding)
  end
end
