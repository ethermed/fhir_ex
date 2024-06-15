defmodule Fhir.PackagedProductDefinition do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_copackagedIndicator, Fhir.Element
        field :_description, Fhir.Element
        field :_implicitRules, Fhir.Element
        field :_language, Fhir.Element
        field :_name, Fhir.Element
        field :_statusDate, Fhir.Element
        field :attachedDocument, [Fhir.Reference], default: []
        field :characteristic, [Fhir.PackagedProductDefinitionProperty], default: []
        field :contained, [Fhir.ResourceList], default: []
        field :containedItemQuantity, [Fhir.Quantity], default: []
        field :copackagedIndicator, :boolean
        field :description, :string
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Identifier], default: []
        field :implicitRules, :string
        field :language, :string
        field :legalStatusOfSupply, [Fhir.PackagedProductDefinitionLegalStatusOfSupply], default: []
        field :manufacturer, [Fhir.Reference], default: []
        field :marketingStatus, [Fhir.MarketingStatus], default: []
        field :meta, Fhir.Meta
        field :modifierExtension, [Fhir.Extension], default: []
        field :name, :string
        field :packageFor, [Fhir.Reference], default: []
        field :packaging, Fhir.PackagedProductDefinitionPackaging
        field :resourceType, :string, default: "PackagedProductDefinition"
        field :status, Fhir.CodeableConcept
        field :statusDate, :datetime
        field :text, Fhir.Narrative
        field :type, Fhir.CodeableConcept
  end
end
