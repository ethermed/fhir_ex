defmodule Fhir.v6().Dosage do
  use TypedStruct

  typedstruct do
    field(:_asNeeded, Fhir.v6().Element)
    field(:_patientInstruction, Fhir.v6().Element)
    field(:_sequence, Fhir.v6().Element)
    field(:_text, Fhir.v6().Element)
    field(:additionalInstruction, [Fhir.v6().CodeableConcept], default: [])
    field(:asNeeded, :boolean)
    field(:asNeededFor, [Fhir.v6().CodeableConcept], default: [])
    field(:doseAndRate, [Fhir.v6().DosageDoseAndRate], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:maxDosePerAdministration, Fhir.v6().Quantity)
    field(:maxDosePerLifetime, Fhir.v6().Quantity)
    field(:maxDosePerPeriod, [Fhir.v6().Ratio], default: [])
    field(:method, Fhir.v6().CodeableConcept)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:patientInstruction, :string)
    field(:route, Fhir.v6().CodeableConcept)
    field(:sequence, :float)
    field(:site, Fhir.v6().CodeableConcept)
    field(:text, :string)
    field(:timing, Fhir.v6().Timing)
  end
end
