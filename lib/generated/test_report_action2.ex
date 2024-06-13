defmodule Fhir.Generated.TestReportAction2 do
  use TypedStruct

  typedstruct do
    field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :operation, Fhir.Generated.TestReportOperation
  end
end
