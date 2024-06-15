defmodule Fhir.AccountDiagnosis do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_dateOfDiagnosis, Fhir.Element
        field :_onAdmission, Fhir.Element
        field :_sequence, Fhir.Element
        field :condition, Fhir.CodeableReference
        field :dateOfDiagnosis, :datetime
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Extension], default: []
        field :onAdmission, :boolean
        field :packageCode, [Fhir.CodeableConcept], default: []
        field :sequence, :float
        field :type, [Fhir.CodeableConcept], default: []
  end
end
