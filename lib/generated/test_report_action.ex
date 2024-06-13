defmodule Fhir.Generated.TestReportAction do
  use TypedStruct

  typedstruct do
    field :assert, Fhir.Generated.TestReportAssert
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :operation, Fhir.Generated.TestReportOperation
  end
end
