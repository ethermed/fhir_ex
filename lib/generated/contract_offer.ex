defmodule Fhir.Generated.ContractOffer do
  use TypedStruct

  typedstruct do
    field :_linkId, [Fhir.Generated.Element], default: []
        field :_securityLabelNumber, [Fhir.Generated.Element], default: []
        field :_text, Fhir.Generated.Element
        field :answer, [Fhir.Generated.ContractAnswer], default: []
        field :decision, Fhir.Generated.CodeableConcept
        field :decisionMode, [Fhir.Generated.CodeableConcept], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :linkId, [:string], default: []
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :party, [Fhir.Generated.ContractParty], default: []
        field :securityLabelNumber, [:float], default: []
        field :text, :string
        field :topic, Fhir.Generated.Reference
        field :type, Fhir.Generated.CodeableConcept
  end
end
