defmodule Fhir.Generated.AccountDiagnosis do
  use TypedStruct

  typedstruct do
    field :_dateOfDiagnosis, Fhir.Generated.Element
        field :_onAdmission, Fhir.Generated.Element
        field :_sequence, Fhir.Generated.Element
        field :condition, Fhir.Generated.CodeableReference
        field :dateOfDiagnosis, :datetime
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :onAdmission, :boolean
        field :packageCode, [Fhir.Generated.CodeableConcept], default: []
        field :sequence, :float
        field :type, [Fhir.Generated.CodeableConcept], default: []
  end
end
