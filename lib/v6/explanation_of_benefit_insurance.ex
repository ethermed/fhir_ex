defmodule Fhir.v6().ExplanationOfBenefitInsurance do
  use TypedStruct

  typedstruct do
    field(:_focal, Fhir.v6().Element)
    field(:_preAuthRef, [Fhir.v6().Element], default: [])
    field(:coverage, Fhir.v6().Reference)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:focal, :boolean)
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:preAuthRef, [:string], default: [])
  end
end
