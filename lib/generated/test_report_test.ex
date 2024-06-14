defmodule Fhir.TestReportTest do
  use TypedStruct

  typedstruct do
    field(:_description, Fhir.Element)
    field(:_name, Fhir.Element)
    field(:action, [Fhir.TestReportAction1], default: [])
    field(:description, :string)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:name, :string)
  end
end
