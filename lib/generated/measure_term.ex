defmodule Fhir.Generated.MeasureTerm do
  use TypedStruct

  typedstruct do
    field :_definition, Fhir.Generated.Element
        field :code, Fhir.Generated.CodeableConcept
        field :definition, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
  end
end
