defmodule Fhir.Generated.ServiceRequestOrderDetail do
  use TypedStruct

  typedstruct do
    field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :parameter, [Fhir.Generated.ServiceRequestParameter], default: []
        field :parameterFocus, Fhir.Generated.CodeableReference
  end
end
