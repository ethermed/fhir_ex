defmodule Fhir.SubstanceProtein do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_disulfideLinkage, [Fhir.Element], default: [])
    field(:_implicitRules, Fhir.Element)
    field(:_language, Fhir.Element)
    field(:_numberOfSubunits, Fhir.Element)
    field(:contained, [Fhir.ResourceList], default: [])
    field(:disulfideLinkage, [:string], default: [])
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:implicitRules, :string)
    field(:language, :string)
    field(:meta, Fhir.Meta)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:numberOfSubunits, :float)
    field(:resourceType, :string, default: "SubstanceProtein")
    field(:sequenceType, Fhir.CodeableConcept)
    field(:subunit, [Fhir.SubstanceProteinSubunit], default: [])
    field(:text, Fhir.Narrative)
  end
end
