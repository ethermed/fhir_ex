defmodule Fhir.v6().GenomicStudyAnalysis do
  use TypedStruct

  typedstruct do
    field(:_date, Fhir.v6().Element)
    field(:_instantiatesUri, Fhir.v6().Element)
    field(:_title, Fhir.v6().Element)
    field(:changeType, [Fhir.v6().CodeableConcept], default: [])
    field(:date, :datetime)
    field(:device, [Fhir.v6().GenomicStudyDevice], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:focus, [Fhir.v6().Reference], default: [])
    field(:genomeBuild, Fhir.v6().CodeableConcept)
    field(:id, :string)
    field(:identifier, [Fhir.v6().Identifier], default: [])
    field(:input, [Fhir.v6().GenomicStudyInput], default: [])
    field(:instantiatesCanonical, :string)
    field(:instantiatesUri, :string)
    field(:methodType, [Fhir.v6().CodeableConcept], default: [])
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:note, [Fhir.v6().Annotation], default: [])
    field(:output, [Fhir.v6().GenomicStudyOutput], default: [])
    field(:performer, [Fhir.v6().GenomicStudyPerformer], default: [])
    field(:protocolPerformed, Fhir.v6().Reference)
    field(:regionsCalled, [Fhir.v6().Reference], default: [])
    field(:regionsStudied, [Fhir.v6().Reference], default: [])
    field(:specimen, [Fhir.v6().Reference], default: [])
    field(:title, :string)
  end
end
