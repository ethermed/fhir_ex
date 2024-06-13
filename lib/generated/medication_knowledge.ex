defmodule Fhir.Generated.MedicationKnowledge do
  use TypedStruct

  typedstruct do
    field :_approvalDate, Fhir.Generated.Element
        field :_copyright, Fhir.Generated.Element
        field :_copyrightLabel, Fhir.Generated.Element
        field :_date, Fhir.Generated.Element
        field :_description, Fhir.Generated.Element
        field :_experimental, Fhir.Generated.Element
        field :_implicitRules, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_lastReviewDate, Fhir.Generated.Element
        field :_name, [Fhir.Generated.Element], default: []
        field :_preparationInstruction, Fhir.Generated.Element
        field :_publisher, Fhir.Generated.Element
        field :_purpose, Fhir.Generated.Element
        field :_status, Fhir.Generated.Element
        field :_title, Fhir.Generated.Element
        field :_url, Fhir.Generated.Element
        field :_version, Fhir.Generated.Element
        field :_versionAlgorithmString, Fhir.Generated.Element
        field :approvalDate, :date
        field :associatedMedication, [Fhir.Generated.Reference], default: []
        field :author, Fhir.Generated.Reference
        field :clinicalUseIssue, [Fhir.Generated.Reference], default: []
        field :code, Fhir.Generated.CodeableConcept
        field :contact, [Fhir.Generated.ContactDetail], default: []
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :copyright, :string
        field :copyrightLabel, :string
        field :cost, [Fhir.Generated.MedicationKnowledgeCost], default: []
        field :date, :datetime
        field :definitional, Fhir.Generated.MedicationKnowledgeDefinitional
        field :description, :string
        field :editor, [Fhir.Generated.ContactDetail], default: []
        field :effectivePeriod, Fhir.Generated.Period
        field :endorser, [Fhir.Generated.ContactDetail], default: []
        field :experimental, :boolean
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :implicitRules, :string
        field :indicationGuideline, [Fhir.Generated.MedicationKnowledgeIndicationGuideline], default: []
        field :intendedJurisdiction, [Fhir.Generated.CodeableConcept], default: []
        field :jurisdiction, [Fhir.Generated.CodeableConcept], default: []
        field :language, :string
        field :lastReviewDate, :date
        field :medicineClassification, [Fhir.Generated.MedicationKnowledgeMedicineClassification], default: []
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :monitoringProgram, [Fhir.Generated.MedicationKnowledgeMonitoringProgram], default: []
        field :monograph, [Fhir.Generated.MedicationKnowledgeMonograph], default: []
        field :name, [:string], default: []
        field :packaging, [Fhir.Generated.MedicationKnowledgePackaging], default: []
        field :preparationInstruction, :string
        field :productType, [Fhir.Generated.CodeableConcept], default: []
        field :publisher, :string
        field :purpose, :string
        field :regulatory, [Fhir.Generated.MedicationKnowledgeRegulatory], default: []
        field :relatedArtifact, [Fhir.Generated.RelatedArtifact], default: []
        field :relatedMedicationKnowledge, [Fhir.Generated.MedicationKnowledgeRelatedMedicationKnowledge], default: []
        field :resourceType, :string, default: "MedicationKnowledge"
        field :reviewer, [Fhir.Generated.ContactDetail], default: []
        field :status, :string
        field :storageGuideline, [Fhir.Generated.MedicationKnowledgeStorageGuideline], default: []
        field :text, Fhir.Generated.Narrative
        field :title, :string
        field :topic, [Fhir.Generated.CodeableConcept], default: []
        field :url, :string
        field :useContext, [Fhir.Generated.UsageContext], default: []
        field :version, :string
        field :versionAlgorithmCoding, Fhir.Generated.Coding
        field :versionAlgorithmString, :string
  end
end
