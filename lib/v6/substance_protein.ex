defmodule Fhir.v6().SubstanceProtein do
  use TypedStruct

  typedstruct do
    field(:_disulfideLinkage, [Fhir.v6().Element], default: [])
    field(:_implicitRules, Fhir.v6().Element)
    field(:_language, Fhir.v6().Element)
    field(:_numberOfSubunits, Fhir.v6().Element)
    field(:contained, [Fhir.v6().ResourceList], default: [])
    field(:disulfideLinkage, [:string], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:implicitRules, :string)
    field(:language, :string)
    field(:meta, Fhir.v6().Meta)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:numberOfSubunits, :float)
    field(:resourceType, :string, default: "SubstanceProtein")
    field(:sequenceType, Fhir.v6().CodeableConcept)
    field(:subunit, [Fhir.v6().SubstanceProteinSubunit], default: [])
    field(:text, Fhir.v6().Narrative)
  end
end
