defmodule Fhir.AccountBalance do
  use TypedStruct

  typedstruct do
    field(:_estimate, Fhir.Element)
    field(:aggregate, Fhir.CodeableConcept)
    field(:amount, Fhir.Money)
    field(:estimate, :boolean)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:term, Fhir.CodeableConcept)
  end
end
