defmodule Fhir.v6().ConceptMapDependsOn do
  use TypedStruct

  typedstruct do
    field(:_attribute, Fhir.v6().Element)
    field(:_valueBoolean, Fhir.v6().Element)
    field(:_valueCode, Fhir.v6().Element)
    field(:_valueString, Fhir.v6().Element)
    field(:attribute, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:valueBoolean, :boolean)
    field(:valueCode, :string)
    field(:valueCoding, Fhir.v6().Coding)
    field(:valueQuantity, Fhir.v6().Quantity)
    field(:valueSet, :string)
    field(:valueString, :string)
  end
end
