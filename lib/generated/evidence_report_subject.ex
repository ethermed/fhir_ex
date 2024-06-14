defmodule Fhir.EvidenceReportSubject do
  use TypedStruct

  typedstruct do
    field(:characteristic, [Fhir.EvidenceReportCharacteristic], default: [])
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:note, [Fhir.Annotation], default: [])
  end
end
