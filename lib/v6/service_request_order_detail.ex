defmodule Fhir.v6().ServiceRequestOrderDetail do
  use TypedStruct

  typedstruct do
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:parameter, [Fhir.v6().ServiceRequestParameter], default: [])
    field(:parameterFocus, Fhir.v6().CodeableReference)
  end
end
