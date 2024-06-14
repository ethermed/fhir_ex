defmodule Fhir.v6().ContractTerm do
  use TypedStruct

  typedstruct do
    field(:_issued, Fhir.v6().Element)
    field(:_text, Fhir.v6().Element)
    field(:action, [Fhir.v6().ContractAction], default: [])
    field(:applies, Fhir.v6().Period)
    field(:asset, [Fhir.v6().ContractAsset], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:group, [Fhir.v6().ContractTerm], default: [])
    field(:id, :string)
    field(:identifier, Fhir.v6().Identifier)
    field(:issued, :datetime)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:offer, Fhir.v6().ContractOffer)
    field(:securityLabel, [Fhir.v6().ContractSecurityLabel], default: [])
    field(:subType, Fhir.v6().CodeableConcept)
    field(:text, :string)
    field(:topicCodeableConcept, Fhir.v6().CodeableConcept)
    field(:topicReference, Fhir.v6().Reference)
    field(:type, Fhir.v6().CodeableConcept)
  end
end
