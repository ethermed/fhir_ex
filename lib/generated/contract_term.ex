defmodule Fhir.Generated.ContractTerm do
  use TypedStruct

  typedstruct do
    field :_issued, Fhir.Generated.Element
        field :_text, Fhir.Generated.Element
        field :action, [Fhir.Generated.ContractAction], default: []
        field :applies, Fhir.Generated.Period
        field :asset, [Fhir.Generated.ContractAsset], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :group, [Fhir.Generated.ContractTerm], default: []
        field :id, :string
        field :identifier, Fhir.Generated.Identifier
        field :issued, :datetime
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :offer, Fhir.Generated.ContractOffer
        field :securityLabel, [Fhir.Generated.ContractSecurityLabel], default: []
        field :subType, Fhir.Generated.CodeableConcept
        field :text, :string
        field :topicCodeableConcept, Fhir.Generated.CodeableConcept
        field :topicReference, Fhir.Generated.Reference
        field :type, Fhir.Generated.CodeableConcept
  end
end
