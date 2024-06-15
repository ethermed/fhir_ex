defmodule Fhir.MedicinalProductDefinition do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_description, Fhir.Element
        field :_implicitRules, Fhir.Element
        field :_indication, Fhir.Element
        field :_language, Fhir.Element
        field :_statusDate, Fhir.Element
        field :_version, Fhir.Element
        field :additionalMonitoringIndicator, Fhir.CodeableConcept
        field :attachedDocument, [Fhir.Reference], default: []
        field :characteristic, [Fhir.MedicinalProductDefinitionCharacteristic], default: []
        field :classification, [Fhir.CodeableConcept], default: []
        field :clinicalTrial, [Fhir.Reference], default: []
        field :code, [Fhir.Coding], default: []
        field :combinedPharmaceuticalDoseForm, Fhir.CodeableConcept
        field :comprisedOf, [Fhir.Reference], default: []
        field :contact, [Fhir.MedicinalProductDefinitionContact], default: []
        field :contained, [Fhir.ResourceList], default: []
        field :crossReference, [Fhir.MedicinalProductDefinitionCrossReference], default: []
        field :description, :string
        field :domain, Fhir.CodeableConcept
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Identifier], default: []
        field :implicitRules, :string
        field :impurity, [Fhir.CodeableReference], default: []
        field :indication, :string
        field :ingredient, [Fhir.CodeableConcept], default: []
        field :language, :string
        field :legalStatusOfSupply, Fhir.CodeableConcept
        field :marketingStatus, [Fhir.MarketingStatus], default: []
        field :masterFile, [Fhir.Reference], default: []
        field :meta, Fhir.Meta
        field :modifierExtension, [Fhir.Extension], default: []
        field :name, [Fhir.MedicinalProductDefinitionName], default: []
        field :operation, [Fhir.MedicinalProductDefinitionOperation], default: []
        field :packagedMedicinalProduct, [Fhir.CodeableConcept], default: []
        field :pediatricUseIndicator, Fhir.CodeableConcept
        field :resourceType, :string, default: "MedicinalProductDefinition"
        field :route, [Fhir.CodeableConcept], default: []
        field :specialMeasures, [Fhir.CodeableConcept], default: []
        field :status, Fhir.CodeableConcept
        field :statusDate, :datetime
        field :text, Fhir.Narrative
        field :type, Fhir.CodeableConcept
        field :version, :string
  end
end
