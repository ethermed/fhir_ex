defmodule Fhir.Generated.MedicationKnowledgeMonitoringProgram do
  use TypedStruct

  typedstruct do
    field :_name, Fhir.Generated.Element
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :name, :string
        field :type, Fhir.Generated.CodeableConcept
  end
end