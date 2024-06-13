defmodule Fhir.Generated.ClinicalUseDefinitionContraindication do
  use TypedStruct

  typedstruct do
    field :applicability, Fhir.Generated.Expression
        field :comorbidity, [Fhir.Generated.CodeableReference], default: []
        field :diseaseStatus, Fhir.Generated.CodeableReference
        field :diseaseSymptomProcedure, Fhir.Generated.CodeableReference
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :indication, [Fhir.Generated.Reference], default: []
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :otherTherapy, [Fhir.Generated.ClinicalUseDefinitionOtherTherapy], default: []
  end
end
