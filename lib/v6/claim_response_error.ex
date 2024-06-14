defmodule Fhir.v6().ClaimResponseError do
  use TypedStruct

  typedstruct do
    field(:_detailSequence, Fhir.v6().Element)
    field(:_expression, [Fhir.v6().Element], default: [])
    field(:_itemSequence, Fhir.v6().Element)
    field(:_subDetailSequence, Fhir.v6().Element)
    field(:code, Fhir.v6().CodeableConcept)
    field(:detailSequence, :float)
    field(:expression, [:string], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:itemSequence, :float)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:subDetailSequence, :float)
  end
end
