defmodule Fhir.ContractAsset do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_condition, Fhir.Element
        field :_linkId, [Fhir.Element], default: []
        field :_securityLabelNumber, [Fhir.Element], default: []
        field :_text, Fhir.Element
        field :answer, [Fhir.ContractAnswer], default: []
        field :condition, :string
        field :context, [Fhir.ContractContext], default: []
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :linkId, [:string], default: []
        field :modifierExtension, [Fhir.Extension], default: []
        field :period, [Fhir.Period], default: []
        field :periodType, [Fhir.CodeableConcept], default: []
        field :relationship, Fhir.Coding
        field :scope, Fhir.CodeableConcept
        field :securityLabelNumber, [:float], default: []
        field :subtype, [Fhir.CodeableConcept], default: []
        field :text, :string
        field :type, [Fhir.CodeableConcept], default: []
        field :typeReference, [Fhir.Reference], default: []
        field :usePeriod, [Fhir.Period], default: []
        field :valuedItem, [Fhir.ContractValuedItem], default: []
  end
end
