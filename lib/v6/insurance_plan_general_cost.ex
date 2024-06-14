defmodule Fhir.v6().InsurancePlanGeneralCost do
  use TypedStruct

  typedstruct do
    field(:_comment, Fhir.v6().Element)
    field(:_groupSize, Fhir.v6().Element)
    field(:comment, :string)
    field(:cost, Fhir.v6().Money)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:groupSize, :float)
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:type, Fhir.v6().CodeableConcept)
  end
end
