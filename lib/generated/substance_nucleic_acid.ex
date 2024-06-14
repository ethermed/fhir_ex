defmodule Fhir.SubstanceNucleicAcid do
  use TypedStruct

  typedstruct do
    field(:_areaOfHybridisation, Fhir.Element)
    field(:_implicitRules, Fhir.Element)
    field(:_language, Fhir.Element)
    field(:_numberOfSubunits, Fhir.Element)
    field(:areaOfHybridisation, :string)
    field(:contained, [Fhir.ResourceList], default: [])
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:implicitRules, :string)
    field(:language, :string)
    field(:meta, Fhir.Meta)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:numberOfSubunits, :float)
    field(:oligoNucleotideType, Fhir.CodeableConcept)
    field(:resourceType, :string, default: "SubstanceNucleicAcid")
    field(:sequenceType, Fhir.CodeableConcept)
    field(:subunit, [Fhir.SubstanceNucleicAcidSubunit], default: [])
    field(:text, Fhir.Narrative)
  end
end
