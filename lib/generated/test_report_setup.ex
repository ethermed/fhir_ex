defmodule Fhir.Generated.TestReportSetup do
  use TypedStruct

  typedstruct do
    field :action, [Fhir.Generated.TestReportAction], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
  end
end
