defmodule Fhir.TerminologyCapabilities do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_codeSearch, Fhir.Element
        field :_copyright, Fhir.Element
        field :_copyrightLabel, Fhir.Element
        field :_date, Fhir.Element
        field :_description, Fhir.Element
        field :_experimental, Fhir.Element
        field :_implicitRules, Fhir.Element
        field :_kind, Fhir.Element
        field :_language, Fhir.Element
        field :_lockedDate, Fhir.Element
        field :_name, Fhir.Element
        field :_publisher, Fhir.Element
        field :_purpose, Fhir.Element
        field :_status, Fhir.Element
        field :_title, Fhir.Element
        field :_url, Fhir.Element
        field :_version, Fhir.Element
        field :_versionAlgorithmString, Fhir.Element
        field :closure, Fhir.TerminologyCapabilitiesClosure
        field :codeSearch, :string
        field :codeSystem, [Fhir.TerminologyCapabilitiesCodeSystem], default: []
        field :contact, [Fhir.ContactDetail], default: []
        field :contained, [Fhir.ResourceList], default: []
        field :copyright, :string
        field :copyrightLabel, :string
        field :date, :datetime
        field :description, :string
        field :expansion, Fhir.TerminologyCapabilitiesExpansion
        field :experimental, :boolean
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Identifier], default: []
        field :implementation, Fhir.TerminologyCapabilitiesImplementation
        field :implicitRules, :string
        field :jurisdiction, [Fhir.CodeableConcept], default: []
        field :kind, :string
        field :language, :string
        field :lockedDate, :boolean
        field :meta, Fhir.Meta
        field :modifierExtension, [Fhir.Extension], default: []
        field :name, :string
        field :publisher, :string
        field :purpose, :string
        field :resourceType, :string, default: "TerminologyCapabilities"
        field :software, Fhir.TerminologyCapabilitiesSoftware
        field :status, :string
        field :text, Fhir.Narrative
        field :title, :string
        field :translation, Fhir.TerminologyCapabilitiesTranslation
        field :url, :string
        field :useContext, [Fhir.UsageContext], default: []
        field :validateCode, Fhir.TerminologyCapabilitiesValidateCode
        field :version, :string
        field :versionAlgorithmCoding, Fhir.Coding
        field :versionAlgorithmString, :string
  end
end
