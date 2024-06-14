defmodule Fhir.v6().SubstanceSourceMaterialAuthor do
  use TypedStruct

  typedstruct do
    field(:_authorDescription, Fhir.v6().Element)
    field(:authorDescription, :string)
    field(:authorType, Fhir.v6().CodeableConcept)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
  end
end
