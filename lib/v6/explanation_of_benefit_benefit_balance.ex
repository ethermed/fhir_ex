defmodule Fhir.v6().ExplanationOfBenefitBenefitBalance do
  use TypedStruct

  typedstruct do
    field(:_description, Fhir.v6().Element)
    field(:_excluded, Fhir.v6().Element)
    field(:_name, Fhir.v6().Element)
    field(:category, Fhir.v6().CodeableConcept)
    field(:description, :string)
    field(:excluded, :boolean)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:financial, [Fhir.v6().ExplanationOfBenefitFinancial], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:name, :string)
    field(:network, Fhir.v6().CodeableConcept)
    field(:term, Fhir.v6().CodeableConcept)
    field(:unit, Fhir.v6().CodeableConcept)
  end
end
