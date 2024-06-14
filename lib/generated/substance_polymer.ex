defmodule Fhir.SubstancePolymer do
  use TypedStruct

  typedstruct do
    field(:_implicitRules, Fhir.Element)
    field(:_language, Fhir.Element)
    field(:_modification, Fhir.Element)
    field(:class, Fhir.CodeableConcept)
    field(:contained, [Fhir.ResourceList], default: [])
    field(:copolymerConnectivity, [Fhir.CodeableConcept], default: [])
    field(:extension, [Fhir.Extension], default: [])
    field(:geometry, Fhir.CodeableConcept)
    field(:id, :string)
    field(:identifier, Fhir.Identifier)
    field(:implicitRules, :string)
    field(:language, :string)
    field(:meta, Fhir.Meta)
    field(:modification, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:monomerSet, [Fhir.SubstancePolymerMonomerSet], default: [])
    field(:repeat, [Fhir.SubstancePolymerRepeat], default: [])
    field(:resourceType, :string, default: "SubstancePolymer")
    field(:text, Fhir.Narrative)
  end
end
