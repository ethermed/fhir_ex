defmodule Fhir.v6().SubstanceSourceMaterial do
  use TypedStruct

  typedstruct do
    field(:_geographicalLocation, [Fhir.v6().Element], default: [])
    field(:_implicitRules, Fhir.v6().Element)
    field(:_language, Fhir.v6().Element)
    field(:_organismName, Fhir.v6().Element)
    field(:_parentSubstanceName, [Fhir.v6().Element], default: [])
    field(:contained, [Fhir.v6().ResourceList], default: [])
    field(:countryOfOrigin, [Fhir.v6().CodeableConcept], default: [])
    field(:developmentStage, Fhir.v6().CodeableConcept)
    field(:extension, [Fhir.v6().Extension], default: [])

    field(:fractionDescription, [Fhir.v6().SubstanceSourceMaterialFractionDescription],
      default: []
    )

    field(:geographicalLocation, [:string], default: [])
    field(:id, :string)
    field(:implicitRules, :string)
    field(:language, :string)
    field(:meta, Fhir.v6().Meta)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:organism, Fhir.v6().SubstanceSourceMaterialOrganism)
    field(:organismId, Fhir.v6().Identifier)
    field(:organismName, :string)
    field(:parentSubstanceId, [Fhir.v6().Identifier], default: [])
    field(:parentSubstanceName, [:string], default: [])
    field(:partDescription, [Fhir.v6().SubstanceSourceMaterialPartDescription], default: [])
    field(:resourceType, :string, default: "SubstanceSourceMaterial")
    field(:sourceMaterialClass, Fhir.v6().CodeableConcept)
    field(:sourceMaterialState, Fhir.v6().CodeableConcept)
    field(:sourceMaterialType, Fhir.v6().CodeableConcept)
    field(:text, Fhir.v6().Narrative)
  end
end
