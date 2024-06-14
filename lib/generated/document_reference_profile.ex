defmodule Fhir.DocumentReferenceProfile do
  use TypedStruct

  typedstruct do
    field(:_valueCanonical, Fhir.Element)
    field(:_valueUri, Fhir.Element)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:valueCanonical, :string)
    field(:valueCoding, Fhir.Coding)
    field(:valueUri, :string)
  end
end
