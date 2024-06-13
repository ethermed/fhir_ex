defmodule Fhir.Generated.TestReportParticipant do
  use TypedStruct

  typedstruct do
    field :_display, Fhir.Generated.Element
        field :_type, Fhir.Generated.Element
        field :_uri, Fhir.Generated.Element
        field :display, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :type, :string
        field :uri, :string
  end
end
