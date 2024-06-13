defmodule Fhir.Generated.Contract do
  use TypedStruct

  typedstruct do
    field :_alias, [Fhir.Generated.Element], default: []
        field :_implicitRules, Fhir.Generated.Element
        field :_instantiatesUri, Fhir.Generated.Element
        field :_issued, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_name, Fhir.Generated.Element
        field :_status, Fhir.Generated.Element
        field :_subtitle, Fhir.Generated.Element
        field :_title, Fhir.Generated.Element
        field :_url, Fhir.Generated.Element
        field :_version, Fhir.Generated.Element
        field :alias, [:string], default: []
        field :applies, Fhir.Generated.Period
        field :author, Fhir.Generated.Reference
        field :authority, [Fhir.Generated.Reference], default: []
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :contentDefinition, Fhir.Generated.ContractContentDefinition
        field :contentDerivative, Fhir.Generated.CodeableConcept
        field :domain, [Fhir.Generated.Reference], default: []
        field :expirationType, Fhir.Generated.CodeableConcept
        field :extension, [Fhir.Generated.Extension], default: []
        field :friendly, [Fhir.Generated.ContractFriendly], default: []
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :implicitRules, :string
        field :instantiatesCanonical, Fhir.Generated.Reference
        field :instantiatesUri, :string
        field :issued, :datetime
        field :language, :string
        field :legal, [Fhir.Generated.ContractLegal], default: []
        field :legalState, Fhir.Generated.CodeableConcept
        field :legallyBindingAttachment, Fhir.Generated.Attachment
        field :legallyBindingReference, Fhir.Generated.Reference
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :name, :string
        field :relevantHistory, [Fhir.Generated.Reference], default: []
        field :resourceType, :string, default: "Contract"
        field :rule, [Fhir.Generated.ContractRule], default: []
        field :scope, Fhir.Generated.CodeableConcept
        field :signer, [Fhir.Generated.ContractSigner], default: []
        field :site, [Fhir.Generated.Reference], default: []
        field :status, :string
        field :subType, [Fhir.Generated.CodeableConcept], default: []
        field :subject, [Fhir.Generated.Reference], default: []
        field :subtitle, :string
        field :supportingInfo, [Fhir.Generated.Reference], default: []
        field :term, [Fhir.Generated.ContractTerm], default: []
        field :text, Fhir.Generated.Narrative
        field :title, :string
        field :topicCodeableConcept, Fhir.Generated.CodeableConcept
        field :topicReference, Fhir.Generated.Reference
        field :type, Fhir.Generated.CodeableConcept
        field :url, :string
        field :version, :string
  end
end
