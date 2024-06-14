defmodule Fhir.v6().ImplementationGuideTemplate do
  use TypedStruct

  typedstruct do
    field(:_code, Fhir.v6().Element)
    field(:_scope, Fhir.v6().Element)
    field(:_source, Fhir.v6().Element)
    field(:code, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:scope, :string)
    field(:source, :string)
  end
end
