defmodule Fhir.Generated.GenomicStudyAnalysis do
  use TypedStruct

  typedstruct do
    field :_date, Fhir.Generated.Element
        field :_instantiatesUri, Fhir.Generated.Element
        field :_title, Fhir.Generated.Element
        field :changeType, [Fhir.Generated.CodeableConcept], default: []
        field :date, :datetime
        field :device, [Fhir.Generated.GenomicStudyDevice], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :focus, [Fhir.Generated.Reference], default: []
        field :genomeBuild, Fhir.Generated.CodeableConcept
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :input, [Fhir.Generated.GenomicStudyInput], default: []
        field :instantiatesCanonical, :string
        field :instantiatesUri, :string
        field :methodType, [Fhir.Generated.CodeableConcept], default: []
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :note, [Fhir.Generated.Annotation], default: []
        field :output, [Fhir.Generated.GenomicStudyOutput], default: []
        field :performer, [Fhir.Generated.GenomicStudyPerformer], default: []
        field :protocolPerformed, Fhir.Generated.Reference
        field :regionsCalled, [Fhir.Generated.Reference], default: []
        field :regionsStudied, [Fhir.Generated.Reference], default: []
        field :specimen, [Fhir.Generated.Reference], default: []
        field :title, :string
  end
end
