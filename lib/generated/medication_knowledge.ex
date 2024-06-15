defmodule Fhir.MedicationKnowledge do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_approvalDate, Fhir.Element
        field :_copyright, Fhir.Element
        field :_copyrightLabel, Fhir.Element
        field :_date, Fhir.Element
        field :_description, Fhir.Element
        field :_experimental, Fhir.Element
        field :_implicitRules, Fhir.Element
        field :_language, Fhir.Element
        field :_lastReviewDate, Fhir.Element
        field :_name, [Fhir.Element], default: []
        field :_preparationInstruction, Fhir.Element
        field :_publisher, Fhir.Element
        field :_purpose, Fhir.Element
        field :_status, Fhir.Element
        field :_title, Fhir.Element
        field :_url, Fhir.Element
        field :_version, Fhir.Element
        field :_versionAlgorithmString, Fhir.Element
        field :approvalDate, :date
        field :associatedMedication, [Fhir.Reference], default: []
        field :author, Fhir.Reference
        field :clinicalUseIssue, [Fhir.Reference], default: []
        field :code, Fhir.CodeableConcept
        field :contact, [Fhir.ContactDetail], default: []
        field :contained, [Fhir.ResourceList], default: []
        field :copyright, :string
        field :copyrightLabel, :string
        field :cost, [Fhir.MedicationKnowledgeCost], default: []
        field :date, :datetime
        field :definitional, Fhir.MedicationKnowledgeDefinitional
        field :description, :string
        field :editor, [Fhir.ContactDetail], default: []
        field :effectivePeriod, Fhir.Period
        field :endorser, [Fhir.ContactDetail], default: []
        field :experimental, :boolean
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Identifier], default: []
        field :implicitRules, :string
        field :indicationGuideline, [Fhir.MedicationKnowledgeIndicationGuideline], default: []
        field :intendedJurisdiction, [Fhir.CodeableConcept], default: []
        field :jurisdiction, [Fhir.CodeableConcept], default: []
        field :language, :string
        field :lastReviewDate, :date
        field :medicineClassification, [Fhir.MedicationKnowledgeMedicineClassification], default: []
        field :meta, Fhir.Meta
        field :modifierExtension, [Fhir.Extension], default: []
        field :monitoringProgram, [Fhir.MedicationKnowledgeMonitoringProgram], default: []
        field :monograph, [Fhir.MedicationKnowledgeMonograph], default: []
        field :name, [:string], default: []
        field :packaging, [Fhir.MedicationKnowledgePackaging], default: []
        field :preparationInstruction, :string
        field :productType, [Fhir.CodeableConcept], default: []
        field :publisher, :string
        field :purpose, :string
        field :regulatory, [Fhir.MedicationKnowledgeRegulatory], default: []
        field :relatedArtifact, [Fhir.RelatedArtifact], default: []
        field :relatedMedicationKnowledge, [Fhir.MedicationKnowledgeRelatedMedicationKnowledge], default: []
        field :resourceType, :string, default: "MedicationKnowledge"
        field :reviewer, [Fhir.ContactDetail], default: []
        field :status, :string
        field :storageGuideline, [Fhir.MedicationKnowledgeStorageGuideline], default: []
        field :text, Fhir.Narrative
        field :title, :string
        field :topic, [Fhir.CodeableConcept], default: []
        field :url, :string
        field :useContext, [Fhir.UsageContext], default: []
        field :version, :string
        field :versionAlgorithmCoding, Fhir.Coding
        field :versionAlgorithmString, :string
  end
end
