defmodule Fhir.v6().MedicinalProductDefinitionPart do
  use TypedStruct

  typedstruct do
    field(:_part, Fhir.v6().Element)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:part, :string)
    field(:type, Fhir.v6().CodeableConcept)
  end
end
