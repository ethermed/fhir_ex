defmodule Fhir.v6().InsurancePlanBenefit do
  use TypedStruct

  typedstruct do
    field(:_requirement, Fhir.v6().Element)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:limit, [Fhir.v6().InsurancePlanLimit], default: [])
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:requirement, :string)
    field(:type, Fhir.v6().CodeableConcept)
  end
end
