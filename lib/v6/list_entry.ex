defmodule Fhir.v6().ListEntry do
  use TypedStruct

  typedstruct do
    field(:_date, Fhir.v6().Element)
    field(:_deleted, Fhir.v6().Element)
    field(:date, :datetime)
    field(:deleted, :boolean)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:flag, Fhir.v6().CodeableConcept)
    field(:id, :string)
    field(:item, Fhir.v6().Reference)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
  end
end
