defmodule Fhir.CitationSummary1 do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_value, Fhir.Element)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:source, Fhir.CodeableConcept)
    field(:style, Fhir.CodeableConcept)
    field(:type, Fhir.CodeableConcept)
    field(:value, :string)
  end
end
