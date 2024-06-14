defmodule Fhir.v6().SubstancePolymer do
  use TypedStruct

  typedstruct do
    field(:_implicitRules, Fhir.v6().Element)
    field(:_language, Fhir.v6().Element)
    field(:_modification, Fhir.v6().Element)
    field(:class, Fhir.v6().CodeableConcept)
    field(:contained, [Fhir.v6().ResourceList], default: [])
    field(:copolymerConnectivity, [Fhir.v6().CodeableConcept], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:geometry, Fhir.v6().CodeableConcept)
    field(:id, :string)
    field(:identifier, Fhir.v6().Identifier)
    field(:implicitRules, :string)
    field(:language, :string)
    field(:meta, Fhir.v6().Meta)
    field(:modification, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:monomerSet, [Fhir.v6().SubstancePolymerMonomerSet], default: [])
    field(:repeat, [Fhir.v6().SubstancePolymerRepeat], default: [])
    field(:resourceType, :string, default: "SubstancePolymer")
    field(:text, Fhir.v6().Narrative)
  end
end
