defmodule Fhir.PackagedProductDefinitionContainedItem do
  use TypedStruct

  typedstruct do
    field(:amount, Fhir.Quantity)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:item, Fhir.CodeableReference)
    field(:modifierExtension, [Fhir.Extension], default: [])
  end
end
