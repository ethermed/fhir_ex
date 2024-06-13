defmodule Fhir.Generated.CapabilityStatementSecurity do
  use TypedStruct

  typedstruct do
    field :_cors, Fhir.Generated.Element
        field :_description, Fhir.Generated.Element
        field :cors, :boolean
        field :description, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :service, [Fhir.Generated.CodeableConcept], default: []
  end
end
