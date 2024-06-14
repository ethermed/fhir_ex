defmodule Fhir.v6().SpecimenDefinitionTypeTested do
  use TypedStruct

  typedstruct do
    field(:_isDerived, Fhir.v6().Element)
    field(:_preference, Fhir.v6().Element)
    field(:_requirement, Fhir.v6().Element)
    field(:_singleUse, Fhir.v6().Element)
    field(:container, Fhir.v6().SpecimenDefinitionContainer)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:handling, [Fhir.v6().SpecimenDefinitionHandling], default: [])
    field(:id, :string)
    field(:isDerived, :boolean)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:preference, :string)
    field(:rejectionCriterion, [Fhir.v6().CodeableConcept], default: [])
    field(:requirement, :string)
    field(:retentionTime, Fhir.v6().Duration)
    field(:singleUse, :boolean)
    field(:testingDestination, [Fhir.v6().CodeableConcept], default: [])
    field(:type, Fhir.v6().CodeableConcept)
  end
end
