defmodule Fhir.v6().TestScriptFixture do
  use TypedStruct

  typedstruct do
    field(:_autocreate, Fhir.v6().Element)
    field(:_autodelete, Fhir.v6().Element)
    field(:autocreate, :boolean)
    field(:autodelete, :boolean)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:resource, Fhir.v6().Reference)
  end
end
