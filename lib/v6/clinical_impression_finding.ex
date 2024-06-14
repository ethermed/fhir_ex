defmodule Fhir.v6().ClinicalImpressionFinding do
  use TypedStruct

  typedstruct do
    field(:_basis, Fhir.v6().Element)
    field(:basis, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:item, Fhir.v6().CodeableReference)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
  end
end
