defmodule Fhir.Generated.ContractContext do
  use TypedStruct

  typedstruct do
    field :_text, Fhir.Generated.Element
        field :code, [Fhir.Generated.CodeableConcept], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :reference, Fhir.Generated.Reference
        field :text, :string
  end
end
