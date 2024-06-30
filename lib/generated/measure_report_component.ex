defmodule Fhir.MeasureReportComponent do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_linkId, Fhir.Element)
    field(:_valueBoolean, Fhir.Element)
    field(:code, Fhir.CodeableConcept)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:linkId, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:valueBoolean, :boolean)
    field(:valueCodeableConcept, Fhir.CodeableConcept)
    field(:valueQuantity, Fhir.Quantity)
    field(:valueRange, Fhir.Range)
    field(:valueReference, Fhir.Reference)
  end
end
