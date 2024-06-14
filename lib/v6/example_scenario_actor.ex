defmodule Fhir.v6().ExampleScenarioActor do
  use TypedStruct

  typedstruct do
    field(:_description, Fhir.v6().Element)
    field(:_key, Fhir.v6().Element)
    field(:_title, Fhir.v6().Element)
    field(:_type, Fhir.v6().Element)
    field(:description, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:key, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:title, :string)
    field(:type, :string)
  end
end
