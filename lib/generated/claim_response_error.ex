defmodule Fhir.ClaimResponseError do
  use TypedStruct

  typedstruct do
    field(:_detailSequence, Fhir.Element)
    field(:_expression, [Fhir.Element], default: [])
    field(:_itemSequence, Fhir.Element)
    field(:_subDetailSequence, Fhir.Element)
    field(:code, Fhir.CodeableConcept)
    field(:detailSequence, :float)
    field(:expression, [:string], default: [])
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:itemSequence, :float)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:subDetailSequence, :float)
  end
end
