defmodule Fhir.Generated.ContractAsset do
  use TypedStruct

  typedstruct do
    field :_condition, Fhir.Generated.Element
        field :_linkId, [Fhir.Generated.Element], default: []
        field :_securityLabelNumber, [Fhir.Generated.Element], default: []
        field :_text, Fhir.Generated.Element
        field :answer, [Fhir.Generated.ContractAnswer], default: []
        field :condition, :string
        field :context, [Fhir.Generated.ContractContext], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :linkId, [:string], default: []
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :period, [Fhir.Generated.Period], default: []
        field :periodType, [Fhir.Generated.CodeableConcept], default: []
        field :relationship, Fhir.Generated.Coding
        field :scope, Fhir.Generated.CodeableConcept
        field :securityLabelNumber, [:float], default: []
        field :subtype, [Fhir.Generated.CodeableConcept], default: []
        field :text, :string
        field :type, [Fhir.Generated.CodeableConcept], default: []
        field :typeReference, [Fhir.Generated.Reference], default: []
        field :usePeriod, [Fhir.Generated.Period], default: []
        field :valuedItem, [Fhir.Generated.ContractValuedItem], default: []
  end
end
