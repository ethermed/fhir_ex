defmodule Fhir.SubstancePolymerDegreeOfPolymerisation do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_average, Fhir.Element)
    field(:_high, Fhir.Element)
    field(:_low, Fhir.Element)
    field(:average, :float)
    field(:extension, [Fhir.Extension], default: [])
    field(:high, :float)
    field(:id, :string)
    field(:low, :float)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:type, Fhir.CodeableConcept)
  end
end
