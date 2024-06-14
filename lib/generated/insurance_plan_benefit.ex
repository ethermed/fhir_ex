defmodule Fhir.InsurancePlanBenefit do
  use TypedStruct

  typedstruct do
    field(:_requirement, Fhir.Element)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:limit, [Fhir.InsurancePlanLimit], default: [])
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:requirement, :string)
    field(:type, Fhir.CodeableConcept)
  end
end
