defmodule Fhir.Generated.Annotation do
  use TypedStruct

  typedstruct do
    field :_authorString, Fhir.Generated.Element
        field :_text, Fhir.Generated.Element
        field :_time, Fhir.Generated.Element
        field :authorReference, Fhir.Generated.Reference
        field :authorString, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :text, :string
        field :time, :datetime
  end
end
