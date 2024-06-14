defmodule Fhir.v6().MarketingStatus do
  use TypedStruct

  typedstruct do
    field(:_restoreDate, Fhir.v6().Element)
    field(:country, Fhir.v6().CodeableConcept)
    field(:dateRange, Fhir.v6().Period)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:jurisdiction, Fhir.v6().CodeableConcept)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:restoreDate, :datetime)
    field(:status, Fhir.v6().CodeableConcept)
  end
end
