defmodule Fhir.Generated.Timing do
  use TypedStruct

  typedstruct do
    field :_event, [Fhir.Generated.Element], default: []
        field :code, Fhir.Generated.CodeableConcept
        field :event, [:datetime], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :repeat, Fhir.Generated.TimingRepeat
  end
end
