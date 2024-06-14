defmodule Fhir.v6().ManufacturedItemDefinitionComponent do
  use TypedStruct

  typedstruct do
    field(:amount, [Fhir.v6().Quantity], default: [])
    field(:component, [Fhir.v6().ManufacturedItemDefinitionComponent], default: [])
    field(:constituent, [Fhir.v6().ManufacturedItemDefinitionConstituent], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:function, [Fhir.v6().CodeableConcept], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:property, [Fhir.v6().ManufacturedItemDefinitionProperty], default: [])
    field(:type, Fhir.v6().CodeableConcept)
  end
end
