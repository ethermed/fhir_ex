defmodule Fhir.ManufacturedItemDefinition do
  use TypedStruct

  typedstruct do
    field(:_implicitRules, Fhir.Element)
    field(:_language, Fhir.Element)
    field(:_name, Fhir.Element)
    field(:_status, Fhir.Element)
    field(:component, [Fhir.ManufacturedItemDefinitionComponent], default: [])
    field(:contained, [Fhir.ResourceList], default: [])
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:identifier, [Fhir.Identifier], default: [])
    field(:implicitRules, :string)
    field(:ingredient, [Fhir.CodeableConcept], default: [])
    field(:language, :string)
    field(:manufacturedDoseForm, Fhir.CodeableConcept)
    field(:manufacturer, [Fhir.Reference], default: [])
    field(:marketingStatus, [Fhir.MarketingStatus], default: [])
    field(:meta, Fhir.Meta)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:name, :string)
    field(:property, [Fhir.ManufacturedItemDefinitionProperty], default: [])
    field(:resourceType, :string, default: "ManufacturedItemDefinition")
    field(:status, :string)
    field(:text, Fhir.Narrative)
    field(:unitOfPresentation, Fhir.CodeableConcept)
  end
end
