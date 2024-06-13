defmodule Fhir.Generated.MedicinalProductDefinition do
  use TypedStruct

  typedstruct do
    field :_description, Fhir.Generated.Element
        field :_implicitRules, Fhir.Generated.Element
        field :_indication, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_statusDate, Fhir.Generated.Element
        field :_version, Fhir.Generated.Element
        field :additionalMonitoringIndicator, Fhir.Generated.CodeableConcept
        field :attachedDocument, [Fhir.Generated.Reference], default: []
        field :characteristic, [Fhir.Generated.MedicinalProductDefinitionCharacteristic], default: []
        field :classification, [Fhir.Generated.CodeableConcept], default: []
        field :clinicalTrial, [Fhir.Generated.Reference], default: []
        field :code, [Fhir.Generated.Coding], default: []
        field :combinedPharmaceuticalDoseForm, Fhir.Generated.CodeableConcept
        field :comprisedOf, [Fhir.Generated.Reference], default: []
        field :contact, [Fhir.Generated.MedicinalProductDefinitionContact], default: []
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :crossReference, [Fhir.Generated.MedicinalProductDefinitionCrossReference], default: []
        field :description, :string
        field :domain, Fhir.Generated.CodeableConcept
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :implicitRules, :string
        field :impurity, [Fhir.Generated.CodeableReference], default: []
        field :indication, :string
        field :ingredient, [Fhir.Generated.CodeableConcept], default: []
        field :language, :string
        field :legalStatusOfSupply, Fhir.Generated.CodeableConcept
        field :marketingStatus, [Fhir.Generated.MarketingStatus], default: []
        field :masterFile, [Fhir.Generated.Reference], default: []
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :name, [Fhir.Generated.MedicinalProductDefinitionName], default: []
        field :operation, [Fhir.Generated.MedicinalProductDefinitionOperation], default: []
        field :packagedMedicinalProduct, [Fhir.Generated.CodeableConcept], default: []
        field :pediatricUseIndicator, Fhir.Generated.CodeableConcept
        field :resourceType, :string, default: "MedicinalProductDefinition"
        field :route, [Fhir.Generated.CodeableConcept], default: []
        field :specialMeasures, [Fhir.Generated.CodeableConcept], default: []
        field :status, Fhir.Generated.CodeableConcept
        field :statusDate, :datetime
        field :text, Fhir.Generated.Narrative
        field :type, Fhir.Generated.CodeableConcept
        field :version, :string
  end
end
