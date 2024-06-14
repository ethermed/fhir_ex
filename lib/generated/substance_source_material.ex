defmodule Fhir.SubstanceSourceMaterial do
  use TypedStruct

  typedstruct do
    field(:_geographicalLocation, [Fhir.Element], default: [])
    field(:_implicitRules, Fhir.Element)
    field(:_language, Fhir.Element)
    field(:_organismName, Fhir.Element)
    field(:_parentSubstanceName, [Fhir.Element], default: [])
    field(:contained, [Fhir.ResourceList], default: [])
    field(:countryOfOrigin, [Fhir.CodeableConcept], default: [])
    field(:developmentStage, Fhir.CodeableConcept)
    field(:extension, [Fhir.Extension], default: [])
    field(:fractionDescription, [Fhir.SubstanceSourceMaterialFractionDescription], default: [])
    field(:geographicalLocation, [:string], default: [])
    field(:id, :string)
    field(:implicitRules, :string)
    field(:language, :string)
    field(:meta, Fhir.Meta)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:organism, Fhir.SubstanceSourceMaterialOrganism)
    field(:organismId, Fhir.Identifier)
    field(:organismName, :string)
    field(:parentSubstanceId, [Fhir.Identifier], default: [])
    field(:parentSubstanceName, [:string], default: [])
    field(:partDescription, [Fhir.SubstanceSourceMaterialPartDescription], default: [])
    field(:resourceType, :string, default: "SubstanceSourceMaterial")
    field(:sourceMaterialClass, Fhir.CodeableConcept)
    field(:sourceMaterialState, Fhir.CodeableConcept)
    field(:sourceMaterialType, Fhir.CodeableConcept)
    field(:text, Fhir.Narrative)
  end
end
