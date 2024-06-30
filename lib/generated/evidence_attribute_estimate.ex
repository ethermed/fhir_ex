defmodule Fhir.EvidenceAttributeEstimate do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_description, Fhir.Element)
    field(:_level, Fhir.Element)
    field(:attributeEstimate, [Fhir.EvidenceAttributeEstimate], default: [])
    field(:description, :string)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:level, :decimal)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:note, [Fhir.Annotation], default: [])
    field(:quantity, Fhir.Quantity)
    field(:range, Fhir.Range)
    field(:type, Fhir.CodeableConcept)
  end
end
