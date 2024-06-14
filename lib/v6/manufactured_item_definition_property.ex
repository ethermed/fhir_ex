defmodule Fhir.v6().ManufacturedItemDefinitionProperty do
  use TypedStruct

  typedstruct do
    field(:_valueBoolean, Fhir.v6().Element)
    field(:_valueDate, Fhir.v6().Element)
    field(:_valueMarkdown, Fhir.v6().Element)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:type, Fhir.v6().CodeableConcept)
    field(:valueAttachment, Fhir.v6().Attachment)
    field(:valueBoolean, :boolean)
    field(:valueCodeableConcept, Fhir.v6().CodeableConcept)
    field(:valueDate, :string)
    field(:valueMarkdown, :string)
    field(:valueQuantity, Fhir.v6().Quantity)
    field(:valueReference, Fhir.v6().Reference)
  end
end
