defmodule Fhir.ImplementationGuideParameter do
  use TypedStruct

  typedstruct do
    field(:_value, Fhir.Element)
    field(:code, Fhir.Coding)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:value, :string)
  end
end
