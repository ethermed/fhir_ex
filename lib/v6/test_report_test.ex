defmodule Fhir.v6().TestReportTest do
  use TypedStruct

  typedstruct do
    field(:_description, Fhir.v6().Element)
    field(:_name, Fhir.v6().Element)
    field(:action, [Fhir.v6().TestReportAction1], default: [])
    field(:description, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:name, :string)
  end
end
