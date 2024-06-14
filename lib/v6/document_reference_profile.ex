defmodule Fhir.v6().DocumentReferenceProfile do
  use TypedStruct

  typedstruct do
    field(:_valueCanonical, Fhir.v6().Element)
    field(:_valueUri, Fhir.v6().Element)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:valueCanonical, :string)
    field(:valueCoding, Fhir.v6().Coding)
    field(:valueUri, :string)
  end
end
