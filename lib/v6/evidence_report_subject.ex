defmodule Fhir.v6().EvidenceReportSubject do
  use TypedStruct

  typedstruct do
    field(:characteristic, [Fhir.v6().EvidenceReportCharacteristic], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:note, [Fhir.v6().Annotation], default: [])
  end
end
