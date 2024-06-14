defmodule Fhir.v6().EvidenceReportRelatesTo do
  use TypedStruct

  typedstruct do
    field(:_code, Fhir.v6().Element)
    field(:code, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:target, Fhir.v6().EvidenceReportTarget)
  end
end
