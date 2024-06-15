defmodule Fhir.ClinicalUseDefinitionIndication do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_durationString, Fhir.Element
        field :applicability, Fhir.Expression
        field :comorbidity, [Fhir.CodeableReference], default: []
        field :diseaseStatus, Fhir.CodeableReference
        field :diseaseSymptomProcedure, Fhir.CodeableReference
        field :durationRange, Fhir.Range
        field :durationString, :string
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :intendedEffect, Fhir.CodeableReference
        field :modifierExtension, [Fhir.Extension], default: []
        field :otherTherapy, [Fhir.ClinicalUseDefinitionOtherTherapy], default: []
        field :undesirableEffect, [Fhir.Reference], default: []
  end
end
