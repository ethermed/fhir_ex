defmodule Fhir.Generated.TestReportOperation do
  use TypedStruct

  typedstruct do
    field :_detail, Fhir.Generated.Element
        field :_message, Fhir.Generated.Element
        field :_result, Fhir.Generated.Element
        field :detail, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :message, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :result, :string
  end
end
