defmodule Fhir.Generated.EvidenceReportSubject do
  use TypedStruct

  typedstruct do
    field :characteristic, [Fhir.Generated.EvidenceReportCharacteristic], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :note, [Fhir.Generated.Annotation], default: []
  end
end
