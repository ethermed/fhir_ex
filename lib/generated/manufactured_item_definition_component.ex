defmodule Fhir.ManufacturedItemDefinitionComponent do
  use TypedStruct

  typedstruct do
    field(:amount, [Fhir.Quantity], default: [])
    field(:component, [Fhir.ManufacturedItemDefinitionComponent], default: [])
    field(:constituent, [Fhir.ManufacturedItemDefinitionConstituent], default: [])
    field(:extension, [Fhir.Extension], default: [])
    field(:function, [Fhir.CodeableConcept], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:property, [Fhir.ManufacturedItemDefinitionProperty], default: [])
    field(:type, Fhir.CodeableConcept)
  end
end
