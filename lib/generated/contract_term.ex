defmodule Fhir.ContractTerm do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_issued, Fhir.Element)
    field(:_text, Fhir.Element)
    field(:action, [Fhir.ContractAction], default: [])
    field(:applies, Fhir.Period)
    field(:asset, [Fhir.ContractAsset], default: [])
    field(:extension, [Fhir.Extension], default: [])
    field(:group, [Fhir.ContractTerm], default: [])
    field(:id, :string)
    field(:identifier, Fhir.Identifier)
    field(:issued, :datetime)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:offer, Fhir.ContractOffer)
    field(:securityLabel, [Fhir.ContractSecurityLabel], default: [])
    field(:subType, Fhir.CodeableConcept)
    field(:text, :string)
    field(:topicCodeableConcept, Fhir.CodeableConcept)
    field(:topicReference, Fhir.Reference)
    field(:type, Fhir.CodeableConcept)
  end
end
