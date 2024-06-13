defmodule Fhir.Generated.CompositionAttester do
  use TypedStruct

  typedstruct do
    field :_time, Fhir.Generated.Element
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :mode, Fhir.Generated.CodeableConcept
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :party, Fhir.Generated.Reference
        field :time, :datetime
  end
end
