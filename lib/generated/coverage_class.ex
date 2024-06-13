defmodule Fhir.Generated.CoverageClass do
  use TypedStruct

  typedstruct do
    field :_name, Fhir.Generated.Element
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :name, :string
        field :type, Fhir.Generated.CodeableConcept
        field :value, Fhir.Generated.Identifier
  end
end
