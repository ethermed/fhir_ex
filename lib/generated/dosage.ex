defmodule Fhir.Generated.Dosage do
  use TypedStruct

  typedstruct do
    field :_asNeeded, Fhir.Generated.Element
        field :_patientInstruction, Fhir.Generated.Element
        field :_sequence, Fhir.Generated.Element
        field :_text, Fhir.Generated.Element
        field :additionalInstruction, [Fhir.Generated.CodeableConcept], default: []
        field :asNeeded, :boolean
        field :asNeededFor, [Fhir.Generated.CodeableConcept], default: []
        field :doseAndRate, [Fhir.Generated.DosageDoseAndRate], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :maxDosePerAdministration, Fhir.Generated.Quantity
        field :maxDosePerLifetime, Fhir.Generated.Quantity
        field :maxDosePerPeriod, [Fhir.Generated.Ratio], default: []
        field :method, Fhir.Generated.CodeableConcept
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :patientInstruction, :string
        field :route, Fhir.Generated.CodeableConcept
        field :sequence, :float
        field :site, Fhir.Generated.CodeableConcept
        field :text, :string
        field :timing, Fhir.Generated.Timing
  end
end
