defmodule Fhir.ServiceRequestOrderDetail do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:parameter, [Fhir.ServiceRequestParameter], default: [])
    field(:parameterFocus, Fhir.CodeableReference)
  end
end
