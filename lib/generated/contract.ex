defmodule Fhir.Contract do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_alias, [Fhir.Element], default: []
        field :_implicitRules, Fhir.Element
        field :_instantiatesUri, Fhir.Element
        field :_issued, Fhir.Element
        field :_language, Fhir.Element
        field :_name, Fhir.Element
        field :_status, Fhir.Element
        field :_subtitle, Fhir.Element
        field :_title, Fhir.Element
        field :_url, Fhir.Element
        field :_version, Fhir.Element
        field :alias, [:string], default: []
        field :applies, Fhir.Period
        field :author, Fhir.Reference
        field :authority, [Fhir.Reference], default: []
        field :contained, [Fhir.ResourceList], default: []
        field :contentDefinition, Fhir.ContractContentDefinition
        field :contentDerivative, Fhir.CodeableConcept
        field :domain, [Fhir.Reference], default: []
        field :expirationType, Fhir.CodeableConcept
        field :extension, [Fhir.Extension], default: []
        field :friendly, [Fhir.ContractFriendly], default: []
        field :id, :string
        field :identifier, [Fhir.Identifier], default: []
        field :implicitRules, :string
        field :instantiatesCanonical, Fhir.Reference
        field :instantiatesUri, :string
        field :issued, :datetime
        field :language, :string
        field :legal, [Fhir.ContractLegal], default: []
        field :legalState, Fhir.CodeableConcept
        field :legallyBindingAttachment, Fhir.Attachment
        field :legallyBindingReference, Fhir.Reference
        field :meta, Fhir.Meta
        field :modifierExtension, [Fhir.Extension], default: []
        field :name, :string
        field :relevantHistory, [Fhir.Reference], default: []
        field :resourceType, :string, default: "Contract"
        field :rule, [Fhir.ContractRule], default: []
        field :scope, Fhir.CodeableConcept
        field :signer, [Fhir.ContractSigner], default: []
        field :site, [Fhir.Reference], default: []
        field :status, :string
        field :subType, [Fhir.CodeableConcept], default: []
        field :subject, [Fhir.Reference], default: []
        field :subtitle, :string
        field :supportingInfo, [Fhir.Reference], default: []
        field :term, [Fhir.ContractTerm], default: []
        field :text, Fhir.Narrative
        field :title, :string
        field :topicCodeableConcept, Fhir.CodeableConcept
        field :topicReference, Fhir.Reference
        field :type, Fhir.CodeableConcept
        field :url, :string
        field :version, :string
  end
end
