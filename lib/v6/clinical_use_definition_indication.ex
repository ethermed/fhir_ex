defmodule Fhir.v6().ClinicalUseDefinitionIndication do
  use TypedStruct

  typedstruct do
    field(:_durationString, Fhir.v6().Element)
    field(:applicability, Fhir.v6().Expression)
    field(:comorbidity, [Fhir.v6().CodeableReference], default: [])
    field(:diseaseStatus, Fhir.v6().CodeableReference)
    field(:diseaseSymptomProcedure, Fhir.v6().CodeableReference)
    field(:durationRange, Fhir.v6().Range)
    field(:durationString, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:intendedEffect, Fhir.v6().CodeableReference)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:otherTherapy, [Fhir.v6().ClinicalUseDefinitionOtherTherapy], default: [])
    field(:undesirableEffect, [Fhir.v6().Reference], default: [])
  end
end
