defmodule Fhir.TestReportParticipant do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_display, Fhir.Element
        field :_type, Fhir.Element
        field :_uri, Fhir.Element
        field :display, :string
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Extension], default: []
        field :type, :string
        field :uri, :string
  end
end
