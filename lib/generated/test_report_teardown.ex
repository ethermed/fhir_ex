defmodule Fhir.Generated.TestReportTeardown do
  use TypedStruct

  typedstruct do
    field :action, [Fhir.Generated.TestReportAction2], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
  end
end
