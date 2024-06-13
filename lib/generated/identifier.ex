defmodule Fhir.Generated.Identifier do
  use TypedStruct

  typedstruct do
    field :_system, Fhir.Generated.Element
        field :_use, Fhir.Generated.Element
        field :_value, Fhir.Generated.Element
        field :assigner, Fhir.Generated.Reference
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :period, Fhir.Generated.Period
        field :system, :string
        field :type, Fhir.Generated.CodeableConcept
        field :use, any()
        field :value, :string
  end
end
