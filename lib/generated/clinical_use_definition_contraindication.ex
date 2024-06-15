defmodule Fhir.ClinicalUseDefinitionContraindication do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :applicability, Fhir.Expression
        field :comorbidity, [Fhir.CodeableReference], default: []
        field :diseaseStatus, Fhir.CodeableReference
        field :diseaseSymptomProcedure, Fhir.CodeableReference
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :indication, [Fhir.Reference], default: []
        field :modifierExtension, [Fhir.Extension], default: []
        field :otherTherapy, [Fhir.ClinicalUseDefinitionOtherTherapy], default: []
  end
end
