defmodule Fhir.ContractOffer do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_linkId, [Fhir.Element], default: []
        field :_securityLabelNumber, [Fhir.Element], default: []
        field :_text, Fhir.Element
        field :answer, [Fhir.ContractAnswer], default: []
        field :decision, Fhir.CodeableConcept
        field :decisionMode, [Fhir.CodeableConcept], default: []
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Identifier], default: []
        field :linkId, [:string], default: []
        field :modifierExtension, [Fhir.Extension], default: []
        field :party, [Fhir.ContractParty], default: []
        field :securityLabelNumber, [:float], default: []
        field :text, :string
        field :topic, Fhir.Reference
        field :type, Fhir.CodeableConcept
  end
end
