defmodule Fhir.DeviceVersion do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_installDate, Fhir.Element)
    field(:_value, Fhir.Element)
    field(:component, Fhir.Identifier)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:installDate, :datetime)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:type, Fhir.CodeableConcept)
    field(:value, :string)
  end
end
