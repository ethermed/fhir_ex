defmodule Fhir.InsurancePlanGeneralCost do
  use TypedStruct

  typedstruct do
    field(:_comment, Fhir.Element)
    field(:_groupSize, Fhir.Element)
    field(:comment, :string)
    field(:cost, Fhir.Money)
    field(:extension, [Fhir.Extension], default: [])
    field(:groupSize, :float)
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:type, Fhir.CodeableConcept)
  end
end
