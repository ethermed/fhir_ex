defmodule Fhir.Generated.ConsentData do
  use TypedStruct

  typedstruct do
    field :_meaning, Fhir.Generated.Element
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :meaning, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :reference, Fhir.Generated.Reference
  end
end
