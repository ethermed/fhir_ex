defmodule Fhir.v6().PackagedProductDefinition do
  use TypedStruct

  typedstruct do
    field(:_copackagedIndicator, Fhir.v6().Element)
    field(:_description, Fhir.v6().Element)
    field(:_implicitRules, Fhir.v6().Element)
    field(:_language, Fhir.v6().Element)
    field(:_name, Fhir.v6().Element)
    field(:_statusDate, Fhir.v6().Element)
    field(:attachedDocument, [Fhir.v6().Reference], default: [])
    field(:characteristic, [Fhir.v6().PackagedProductDefinitionProperty], default: [])
    field(:contained, [Fhir.v6().ResourceList], default: [])
    field(:containedItemQuantity, [Fhir.v6().Quantity], default: [])
    field(:copackagedIndicator, :boolean)
    field(:description, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:identifier, [Fhir.v6().Identifier], default: [])
    field(:implicitRules, :string)
    field(:language, :string)

    field(:legalStatusOfSupply, [Fhir.v6().PackagedProductDefinitionLegalStatusOfSupply],
      default: []
    )

    field(:manufacturer, [Fhir.v6().Reference], default: [])
    field(:marketingStatus, [Fhir.v6().MarketingStatus], default: [])
    field(:meta, Fhir.v6().Meta)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:name, :string)
    field(:packageFor, [Fhir.v6().Reference], default: [])
    field(:packaging, Fhir.v6().PackagedProductDefinitionPackaging)
    field(:resourceType, :string, default: "PackagedProductDefinition")
    field(:status, Fhir.v6().CodeableConcept)
    field(:statusDate, :datetime)
    field(:text, Fhir.v6().Narrative)
    field(:type, Fhir.v6().CodeableConcept)
  end
end
