defmodule Fhir.Generated.PersonLink do
  use TypedStruct

  typedstruct do
    field :_assurance, Fhir.Generated.Element
        field :assurance, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :target, Fhir.Generated.Reference
  end
end
