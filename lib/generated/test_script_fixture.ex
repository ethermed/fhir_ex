defmodule Fhir.TestScriptFixture do
  use TypedStruct

  typedstruct do
    field(:_autocreate, Fhir.Element)
    field(:_autodelete, Fhir.Element)
    field(:autocreate, :boolean)
    field(:autodelete, :boolean)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:resource, Fhir.Reference)
  end
end
