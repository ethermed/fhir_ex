defmodule Fhir.v6().ContractOffer do
  use TypedStruct

  typedstruct do
    field(:_linkId, [Fhir.v6().Element], default: [])
    field(:_securityLabelNumber, [Fhir.v6().Element], default: [])
    field(:_text, Fhir.v6().Element)
    field(:answer, [Fhir.v6().ContractAnswer], default: [])
    field(:decision, Fhir.v6().CodeableConcept)
    field(:decisionMode, [Fhir.v6().CodeableConcept], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:identifier, [Fhir.v6().Identifier], default: [])
    field(:linkId, [:string], default: [])
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:party, [Fhir.v6().ContractParty], default: [])
    field(:securityLabelNumber, [:float], default: [])
    field(:text, :string)
    field(:topic, Fhir.v6().Reference)
    field(:type, Fhir.v6().CodeableConcept)
  end
end
