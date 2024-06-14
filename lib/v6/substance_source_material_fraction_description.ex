defmodule Fhir.v6().SubstanceSourceMaterialFractionDescription do
  use TypedStruct

  typedstruct do
    field(:_fraction, Fhir.v6().Element)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:fraction, :string)
    field(:id, :string)
    field(:materialType, Fhir.v6().CodeableConcept)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
  end
end
