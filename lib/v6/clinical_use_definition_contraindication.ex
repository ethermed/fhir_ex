defmodule Fhir.v6().ClinicalUseDefinitionContraindication do
  use TypedStruct

  typedstruct do
    field(:applicability, Fhir.v6().Expression)
    field(:comorbidity, [Fhir.v6().CodeableReference], default: [])
    field(:diseaseStatus, Fhir.v6().CodeableReference)
    field(:diseaseSymptomProcedure, Fhir.v6().CodeableReference)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:indication, [Fhir.v6().Reference], default: [])
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:otherTherapy, [Fhir.v6().ClinicalUseDefinitionOtherTherapy], default: [])
  end
end
