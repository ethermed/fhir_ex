defmodule Fhir.TestReportAssert do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_detail, Fhir.Element
        field :_message, Fhir.Element
        field :_result, Fhir.Element
        field :detail, :string
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :message, :string
        field :modifierExtension, [Fhir.Extension], default: []
        field :requirement, [Fhir.TestReportRequirement], default: []
        field :result, :string
  end
end
