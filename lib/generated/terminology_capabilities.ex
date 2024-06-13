defmodule Fhir.Generated.TerminologyCapabilities do
  use TypedStruct

  typedstruct do
    field :_codeSearch, Fhir.Generated.Element
        field :_copyright, Fhir.Generated.Element
        field :_copyrightLabel, Fhir.Generated.Element
        field :_date, Fhir.Generated.Element
        field :_description, Fhir.Generated.Element
        field :_experimental, Fhir.Generated.Element
        field :_implicitRules, Fhir.Generated.Element
        field :_kind, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_lockedDate, Fhir.Generated.Element
        field :_name, Fhir.Generated.Element
        field :_publisher, Fhir.Generated.Element
        field :_purpose, Fhir.Generated.Element
        field :_status, Fhir.Generated.Element
        field :_title, Fhir.Generated.Element
        field :_url, Fhir.Generated.Element
        field :_version, Fhir.Generated.Element
        field :_versionAlgorithmString, Fhir.Generated.Element
        field :closure, Fhir.Generated.TerminologyCapabilitiesClosure
        field :codeSearch, :string
        field :codeSystem, [Fhir.Generated.TerminologyCapabilitiesCodeSystem], default: []
        field :contact, [Fhir.Generated.ContactDetail], default: []
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :copyright, :string
        field :copyrightLabel, :string
        field :date, :datetime
        field :description, :string
        field :expansion, Fhir.Generated.TerminologyCapabilitiesExpansion
        field :experimental, :boolean
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :implementation, Fhir.Generated.TerminologyCapabilitiesImplementation
        field :implicitRules, :string
        field :jurisdiction, [Fhir.Generated.CodeableConcept], default: []
        field :kind, :string
        field :language, :string
        field :lockedDate, :boolean
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :name, :string
        field :publisher, :string
        field :purpose, :string
        field :resourceType, :string, default: "TerminologyCapabilities"
        field :software, Fhir.Generated.TerminologyCapabilitiesSoftware
        field :status, :string
        field :text, Fhir.Generated.Narrative
        field :title, :string
        field :translation, Fhir.Generated.TerminologyCapabilitiesTranslation
        field :url, :string
        field :useContext, [Fhir.Generated.UsageContext], default: []
        field :validateCode, Fhir.Generated.TerminologyCapabilitiesValidateCode
        field :version, :string
        field :versionAlgorithmCoding, Fhir.Generated.Coding
        field :versionAlgorithmString, :string
  end
end
