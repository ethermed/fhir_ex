defmodule Fhir.Generated.CodeableConcept do
  use TypedStruct

  typedstruct do
    field :_text, Fhir.Generated.Element
        field :coding, [Fhir.Generated.Coding], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :text, :string
  end
end
