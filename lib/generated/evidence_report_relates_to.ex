defmodule Fhir.Generated.EvidenceReportRelatesTo do
  use TypedStruct

  typedstruct do
    field :_code, Fhir.Generated.Element
        field :code, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :target, Fhir.Generated.EvidenceReportTarget
  end
end
