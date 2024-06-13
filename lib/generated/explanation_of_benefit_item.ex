defmodule Fhir.Generated.ExplanationOfBenefitItem do
  use TypedStruct

  typedstruct do
    field :_careTeamSequence, [Fhir.Generated.Element], default: []
        field :_diagnosisSequence, [Fhir.Generated.Element], default: []
        field :_factor, Fhir.Generated.Element
        field :_informationSequence, [Fhir.Generated.Element], default: []
        field :_noteNumber, [Fhir.Generated.Element], default: []
        field :_procedureSequence, [Fhir.Generated.Element], default: []
        field :_sequence, Fhir.Generated.Element
        field :_servicedDate, Fhir.Generated.Element
        field :adjudication, [Fhir.Generated.ExplanationOfBenefitAdjudication], default: []
        field :bodySite, [Fhir.Generated.ExplanationOfBenefitBodySite], default: []
        field :careTeamSequence, [:float], default: []
        field :category, Fhir.Generated.CodeableConcept
        field :detail, [Fhir.Generated.ExplanationOfBenefitDetail], default: []
        field :diagnosisSequence, [:float], default: []
        field :encounter, [Fhir.Generated.Reference], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :factor, :decimal
        field :id, :string
        field :informationSequence, [:float], default: []
        field :locationAddress, Fhir.Generated.Address
        field :locationCodeableConcept, Fhir.Generated.CodeableConcept
        field :locationReference, Fhir.Generated.Reference
        field :modifier, [Fhir.Generated.CodeableConcept], default: []
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :net, Fhir.Generated.Money
        field :noteNumber, [:float], default: []
        field :patientPaid, Fhir.Generated.Money
        field :procedureSequence, [:float], default: []
        field :productOrService, Fhir.Generated.CodeableConcept
        field :productOrServiceEnd, Fhir.Generated.CodeableConcept
        field :programCode, [Fhir.Generated.CodeableConcept], default: []
        field :quantity, Fhir.Generated.Quantity
        field :request, [Fhir.Generated.Reference], default: []
        field :revenue, Fhir.Generated.CodeableConcept
        field :reviewOutcome, Fhir.Generated.ExplanationOfBenefitReviewOutcome
        field :sequence, :float
        field :servicedDate, :string
        field :servicedPeriod, Fhir.Generated.Period
        field :tax, Fhir.Generated.Money
        field :traceNumber, [Fhir.Generated.Identifier], default: []
        field :udi, [Fhir.Generated.Reference], default: []
        field :unitPrice, Fhir.Generated.Money
  end
end
