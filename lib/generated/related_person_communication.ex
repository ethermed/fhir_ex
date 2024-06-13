defmodule Fhir.Generated.RelatedPersonCommunication do
  use TypedStruct

  typedstruct do
    field :_preferred, Fhir.Generated.Element
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :language, Fhir.Generated.CodeableConcept
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :preferred, :boolean
  end
end
