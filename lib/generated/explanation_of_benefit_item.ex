defmodule Fhir.ExplanationOfBenefitItem do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_careTeamSequence, [Fhir.Element], default: []
        field :_diagnosisSequence, [Fhir.Element], default: []
        field :_factor, Fhir.Element
        field :_informationSequence, [Fhir.Element], default: []
        field :_noteNumber, [Fhir.Element], default: []
        field :_procedureSequence, [Fhir.Element], default: []
        field :_sequence, Fhir.Element
        field :_servicedDate, Fhir.Element
        field :adjudication, [Fhir.ExplanationOfBenefitAdjudication], default: []
        field :bodySite, [Fhir.ExplanationOfBenefitBodySite], default: []
        field :careTeamSequence, [:float], default: []
        field :category, Fhir.CodeableConcept
        field :detail, [Fhir.ExplanationOfBenefitDetail], default: []
        field :diagnosisSequence, [:float], default: []
        field :encounter, [Fhir.Reference], default: []
        field :extension, [Fhir.Extension], default: []
        field :factor, :decimal
        field :id, :string
        field :informationSequence, [:float], default: []
        field :locationAddress, Fhir.Address
        field :locationCodeableConcept, Fhir.CodeableConcept
        field :locationReference, Fhir.Reference
        field :modifier, [Fhir.CodeableConcept], default: []
        field :modifierExtension, [Fhir.Extension], default: []
        field :net, Fhir.Money
        field :noteNumber, [:float], default: []
        field :patientPaid, Fhir.Money
        field :procedureSequence, [:float], default: []
        field :productOrService, Fhir.CodeableConcept
        field :productOrServiceEnd, Fhir.CodeableConcept
        field :programCode, [Fhir.CodeableConcept], default: []
        field :quantity, Fhir.Quantity
        field :request, [Fhir.Reference], default: []
        field :revenue, Fhir.CodeableConcept
        field :reviewOutcome, Fhir.ExplanationOfBenefitReviewOutcome
        field :sequence, :float
        field :servicedDate, :string
        field :servicedPeriod, Fhir.Period
        field :tax, Fhir.Money
        field :traceNumber, [Fhir.Identifier], default: []
        field :udi, [Fhir.Reference], default: []
        field :unitPrice, Fhir.Money
  end
end
