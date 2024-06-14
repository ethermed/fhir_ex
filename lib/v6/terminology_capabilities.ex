defmodule Fhir.v6().TerminologyCapabilities do
  use TypedStruct

  typedstruct do
    field(:_codeSearch, Fhir.v6().Element)
    field(:_copyright, Fhir.v6().Element)
    field(:_copyrightLabel, Fhir.v6().Element)
    field(:_date, Fhir.v6().Element)
    field(:_description, Fhir.v6().Element)
    field(:_experimental, Fhir.v6().Element)
    field(:_implicitRules, Fhir.v6().Element)
    field(:_kind, Fhir.v6().Element)
    field(:_language, Fhir.v6().Element)
    field(:_lockedDate, Fhir.v6().Element)
    field(:_name, Fhir.v6().Element)
    field(:_publisher, Fhir.v6().Element)
    field(:_purpose, Fhir.v6().Element)
    field(:_status, Fhir.v6().Element)
    field(:_title, Fhir.v6().Element)
    field(:_url, Fhir.v6().Element)
    field(:_version, Fhir.v6().Element)
    field(:_versionAlgorithmString, Fhir.v6().Element)
    field(:closure, Fhir.v6().TerminologyCapabilitiesClosure)
    field(:codeSearch, :string)
    field(:codeSystem, [Fhir.v6().TerminologyCapabilitiesCodeSystem], default: [])
    field(:contact, [Fhir.v6().ContactDetail], default: [])
    field(:contained, [Fhir.v6().ResourceList], default: [])
    field(:copyright, :string)
    field(:copyrightLabel, :string)
    field(:date, :datetime)
    field(:description, :string)
    field(:expansion, Fhir.v6().TerminologyCapabilitiesExpansion)
    field(:experimental, :boolean)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:identifier, [Fhir.v6().Identifier], default: [])
    field(:implementation, Fhir.v6().TerminologyCapabilitiesImplementation)
    field(:implicitRules, :string)
    field(:jurisdiction, [Fhir.v6().CodeableConcept], default: [])
    field(:kind, :string)
    field(:language, :string)
    field(:lockedDate, :boolean)
    field(:meta, Fhir.v6().Meta)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:name, :string)
    field(:publisher, :string)
    field(:purpose, :string)
    field(:resourceType, :string, default: "TerminologyCapabilities")
    field(:software, Fhir.v6().TerminologyCapabilitiesSoftware)
    field(:status, :string)
    field(:text, Fhir.v6().Narrative)
    field(:title, :string)
    field(:translation, Fhir.v6().TerminologyCapabilitiesTranslation)
    field(:url, :string)
    field(:useContext, [Fhir.v6().UsageContext], default: [])
    field(:validateCode, Fhir.v6().TerminologyCapabilitiesValidateCode)
    field(:version, :string)
    field(:versionAlgorithmCoding, Fhir.v6().Coding)
    field(:versionAlgorithmString, :string)
  end
end