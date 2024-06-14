defmodule Fhir.v6().ManufacturedItemDefinition do
  use TypedStruct

  typedstruct do
    field(:_implicitRules, Fhir.v6().Element)
    field(:_language, Fhir.v6().Element)
    field(:_name, Fhir.v6().Element)
    field(:_status, Fhir.v6().Element)
    field(:component, [Fhir.v6().ManufacturedItemDefinitionComponent], default: [])
    field(:contained, [Fhir.v6().ResourceList], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:identifier, [Fhir.v6().Identifier], default: [])
    field(:implicitRules, :string)
    field(:ingredient, [Fhir.v6().CodeableConcept], default: [])
    field(:language, :string)
    field(:manufacturedDoseForm, Fhir.v6().CodeableConcept)
    field(:manufacturer, [Fhir.v6().Reference], default: [])
    field(:marketingStatus, [Fhir.v6().MarketingStatus], default: [])
    field(:meta, Fhir.v6().Meta)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:name, :string)
    field(:property, [Fhir.v6().ManufacturedItemDefinitionProperty], default: [])
    field(:resourceType, :string, default: "ManufacturedItemDefinition")
    field(:status, :string)
    field(:text, Fhir.v6().Narrative)
    field(:unitOfPresentation, Fhir.v6().CodeableConcept)
  end
end
