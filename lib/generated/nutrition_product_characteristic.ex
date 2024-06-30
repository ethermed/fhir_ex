defmodule Fhir.NutritionProductCharacteristic do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_valueBase64Binary, Fhir.Element)
    field(:_valueBoolean, Fhir.Element)
    field(:_valueString, Fhir.Element)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:type, Fhir.CodeableConcept)
    field(:valueAttachment, Fhir.Attachment)
    field(:valueBase64Binary, :string)
    field(:valueBoolean, :boolean)
    field(:valueCodeableConcept, Fhir.CodeableConcept)
    field(:valueQuantity, Fhir.Quantity)
    field(:valueString, :string)
  end
end
