defmodule Fhir.v6().ConceptMapProperty do
  use TypedStruct

  typedstruct do
    field(:_code, Fhir.v6().Element)
    field(:_description, Fhir.v6().Element)
    field(:_type, Fhir.v6().Element)
    field(:_uri, Fhir.v6().Element)
    field(:code, :string)
    field(:description, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:system, :string)
    field(:type, :string)
    field(:uri, :string)
  end
end
