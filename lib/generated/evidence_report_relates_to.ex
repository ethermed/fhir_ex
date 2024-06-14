defmodule Fhir.EvidenceReportRelatesTo do
  use TypedStruct

  typedstruct do
    field(:_code, Fhir.Element)
    field(:code, :string)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:target, Fhir.EvidenceReportTarget)
  end
end