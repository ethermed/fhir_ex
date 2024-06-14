defmodule Fhir.v6().DeviceVersion do
  use TypedStruct

  typedstruct do
    field(:_installDate, Fhir.v6().Element)
    field(:_value, Fhir.v6().Element)
    field(:component, Fhir.v6().Identifier)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:installDate, :datetime)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:type, Fhir.v6().CodeableConcept)
    field(:value, :string)
  end
end
