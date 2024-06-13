defmodule Fhir.Generated.ClaimResponseProcessNote do
  use TypedStruct

  typedstruct do
    field :_number, Fhir.Generated.Element
        field :_text, Fhir.Generated.Element
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :language, Fhir.Generated.CodeableConcept
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :number, :float
        field :text, :string
        field :type, Fhir.Generated.CodeableConcept
  end
end
