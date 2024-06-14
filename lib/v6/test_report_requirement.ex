defmodule Fhir.v6().TestReportRequirement do
  use TypedStruct

  typedstruct do
    field(:_linkCanonical, Fhir.v6().Element)
    field(:_linkUri, Fhir.v6().Element)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:linkCanonical, :string)
    field(:linkUri, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
  end
end
