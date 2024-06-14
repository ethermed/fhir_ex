defmodule Fhir.MarketingStatus do
  use TypedStruct

  typedstruct do
    field(:_restoreDate, Fhir.Element)
    field(:country, Fhir.CodeableConcept)
    field(:dateRange, Fhir.Period)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:jurisdiction, Fhir.CodeableConcept)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:restoreDate, :datetime)
    field(:status, Fhir.CodeableConcept)
  end
end
