defmodule Fhir.ClinicalImpressionFinding do
  use TypedStruct

  typedstruct do
    field(:_basis, Fhir.Element)
    field(:basis, :string)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:item, Fhir.CodeableReference)
    field(:modifierExtension, [Fhir.Extension], default: [])
  end
end