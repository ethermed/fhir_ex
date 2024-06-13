defmodule Fhir.Generated.PackagedProductDefinition do
  use TypedStruct

  typedstruct do
    field :_copackagedIndicator, Fhir.Generated.Element
        field :_description, Fhir.Generated.Element
        field :_implicitRules, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_name, Fhir.Generated.Element
        field :_statusDate, Fhir.Generated.Element
        field :attachedDocument, [Fhir.Generated.Reference], default: []
        field :characteristic, [Fhir.Generated.PackagedProductDefinitionProperty], default: []
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :containedItemQuantity, [Fhir.Generated.Quantity], default: []
        field :copackagedIndicator, :boolean
        field :description, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :implicitRules, :string
        field :language, :string
        field :legalStatusOfSupply, [Fhir.Generated.PackagedProductDefinitionLegalStatusOfSupply], default: []
        field :manufacturer, [Fhir.Generated.Reference], default: []
        field :marketingStatus, [Fhir.Generated.MarketingStatus], default: []
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :name, :string
        field :packageFor, [Fhir.Generated.Reference], default: []
        field :packaging, Fhir.Generated.PackagedProductDefinitionPackaging
        field :resourceType, :string, default: "PackagedProductDefinition"
        field :status, Fhir.Generated.CodeableConcept
        field :statusDate, :datetime
        field :text, Fhir.Generated.Narrative
        field :type, Fhir.Generated.CodeableConcept
  end
end
