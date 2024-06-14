defmodule Fhir.v6().InsurancePlan do
  use TypedStruct

  typedstruct do
    field(:_alias, [Fhir.v6().Element], default: [])
    field(:_implicitRules, Fhir.v6().Element)
    field(:_language, Fhir.v6().Element)
    field(:_name, Fhir.v6().Element)
    field(:_status, Fhir.v6().Element)
    field(:administeredBy, Fhir.v6().Reference)
    field(:alias, [:string], default: [])
    field(:contact, [Fhir.v6().ExtendedContactDetail], default: [])
    field(:contained, [Fhir.v6().ResourceList], default: [])
    field(:coverage, [Fhir.v6().InsurancePlanCoverage], default: [])
    field(:coverageArea, [Fhir.v6().Reference], default: [])
    field(:endpoint, [Fhir.v6().Reference], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:identifier, [Fhir.v6().Identifier], default: [])
    field(:implicitRules, :string)
    field(:language, :string)
    field(:meta, Fhir.v6().Meta)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:name, :string)
    field(:network, [Fhir.v6().Reference], default: [])
    field(:ownedBy, Fhir.v6().Reference)
    field(:period, Fhir.v6().Period)
    field(:plan, [Fhir.v6().InsurancePlanPlan], default: [])
    field(:resourceType, :string, default: "InsurancePlan")
    field(:status, :string)
    field(:text, Fhir.v6().Narrative)
    field(:type, [Fhir.v6().CodeableConcept], default: [])
  end
end
