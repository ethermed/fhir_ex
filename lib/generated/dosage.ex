defmodule Fhir.Dosage do
  use TypedStruct

  typedstruct do
    field(:_asNeeded, Fhir.Element)
    field(:_patientInstruction, Fhir.Element)
    field(:_sequence, Fhir.Element)
    field(:_text, Fhir.Element)
    field(:additionalInstruction, [Fhir.CodeableConcept], default: [])
    field(:asNeeded, :boolean)
    field(:asNeededFor, [Fhir.CodeableConcept], default: [])
    field(:doseAndRate, [Fhir.DosageDoseAndRate], default: [])
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:maxDosePerAdministration, Fhir.Quantity)
    field(:maxDosePerLifetime, Fhir.Quantity)
    field(:maxDosePerPeriod, [Fhir.Ratio], default: [])
    field(:method, Fhir.CodeableConcept)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:patientInstruction, :string)
    field(:route, Fhir.CodeableConcept)
    field(:sequence, :float)
    field(:site, Fhir.CodeableConcept)
    field(:text, :string)
    field(:timing, Fhir.Timing)
  end
end
