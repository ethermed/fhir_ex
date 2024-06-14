defmodule Fhir.GenomicStudyAnalysis do
  use TypedStruct

  typedstruct do
    field(:_date, Fhir.Element)
    field(:_instantiatesUri, Fhir.Element)
    field(:_title, Fhir.Element)
    field(:changeType, [Fhir.CodeableConcept], default: [])
    field(:date, :datetime)
    field(:device, [Fhir.GenomicStudyDevice], default: [])
    field(:extension, [Fhir.Extension], default: [])
    field(:focus, [Fhir.Reference], default: [])
    field(:genomeBuild, Fhir.CodeableConcept)
    field(:id, :string)
    field(:identifier, [Fhir.Identifier], default: [])
    field(:input, [Fhir.GenomicStudyInput], default: [])
    field(:instantiatesCanonical, :string)
    field(:instantiatesUri, :string)
    field(:methodType, [Fhir.CodeableConcept], default: [])
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:note, [Fhir.Annotation], default: [])
    field(:output, [Fhir.GenomicStudyOutput], default: [])
    field(:performer, [Fhir.GenomicStudyPerformer], default: [])
    field(:protocolPerformed, Fhir.Reference)
    field(:regionsCalled, [Fhir.Reference], default: [])
    field(:regionsStudied, [Fhir.Reference], default: [])
    field(:specimen, [Fhir.Reference], default: [])
    field(:title, :string)
  end
end
