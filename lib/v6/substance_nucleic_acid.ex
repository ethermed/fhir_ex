defmodule Fhir.v6().SubstanceNucleicAcid do
  use TypedStruct

  typedstruct do
    field(:_areaOfHybridisation, Fhir.v6().Element)
    field(:_implicitRules, Fhir.v6().Element)
    field(:_language, Fhir.v6().Element)
    field(:_numberOfSubunits, Fhir.v6().Element)
    field(:areaOfHybridisation, :string)
    field(:contained, [Fhir.v6().ResourceList], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:implicitRules, :string)
    field(:language, :string)
    field(:meta, Fhir.v6().Meta)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:numberOfSubunits, :float)
    field(:oligoNucleotideType, Fhir.v6().CodeableConcept)
    field(:resourceType, :string, default: "SubstanceNucleicAcid")
    field(:sequenceType, Fhir.v6().CodeableConcept)
    field(:subunit, [Fhir.v6().SubstanceNucleicAcidSubunit], default: [])
    field(:text, Fhir.v6().Narrative)
  end
end
