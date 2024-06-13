defmodule Fhir.Generated.DiagnosticReportMedia do
  use TypedStruct

  typedstruct do
    field :_comment, Fhir.Generated.Element
        field :comment, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :link, Fhir.Generated.Reference
        field :modifierExtension, [Fhir.Generated.Extension], default: []
  end
end
