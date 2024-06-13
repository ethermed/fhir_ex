defmodule Fhir.Generated.ClinicalUseDefinitionIndication do
  use TypedStruct

  typedstruct do
    field :_durationString, Fhir.Generated.Element
        field :applicability, Fhir.Generated.Expression
        field :comorbidity, [Fhir.Generated.CodeableReference], default: []
        field :diseaseStatus, Fhir.Generated.CodeableReference
        field :diseaseSymptomProcedure, Fhir.Generated.CodeableReference
        field :durationRange, Fhir.Generated.Range
        field :durationString, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :intendedEffect, Fhir.Generated.CodeableReference
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :otherTherapy, [Fhir.Generated.ClinicalUseDefinitionOtherTherapy], default: []
        field :undesirableEffect, [Fhir.Generated.Reference], default: []
  end
end
