defmodule Fhir.v6().ContractAsset do
  use TypedStruct

  typedstruct do
    field(:_condition, Fhir.v6().Element)
    field(:_linkId, [Fhir.v6().Element], default: [])
    field(:_securityLabelNumber, [Fhir.v6().Element], default: [])
    field(:_text, Fhir.v6().Element)
    field(:answer, [Fhir.v6().ContractAnswer], default: [])
    field(:condition, :string)
    field(:context, [Fhir.v6().ContractContext], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:linkId, [:string], default: [])
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:period, [Fhir.v6().Period], default: [])
    field(:periodType, [Fhir.v6().CodeableConcept], default: [])
    field(:relationship, Fhir.v6().Coding)
    field(:scope, Fhir.v6().CodeableConcept)
    field(:securityLabelNumber, [:float], default: [])
    field(:subtype, [Fhir.v6().CodeableConcept], default: [])
    field(:text, :string)
    field(:type, [Fhir.v6().CodeableConcept], default: [])
    field(:typeReference, [Fhir.v6().Reference], default: [])
    field(:usePeriod, [Fhir.v6().Period], default: [])
    field(:valuedItem, [Fhir.v6().ContractValuedItem], default: [])
  end
end
