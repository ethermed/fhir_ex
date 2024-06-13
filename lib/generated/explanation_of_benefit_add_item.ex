defmodule Fhir.Generated.ExplanationOfBenefitAddItem do
  use TypedStruct

  typedstruct do
    field :_detailSequence, [Fhir.Generated.Element], default: []
        field :_factor, Fhir.Generated.Element
        field :_itemSequence, [Fhir.Generated.Element], default: []
        field :_noteNumber, [Fhir.Generated.Element], default: []
        field :_servicedDate, Fhir.Generated.Element
        field :_subDetailSequence, [Fhir.Generated.Element], default: []
        field :adjudication, [Fhir.Generated.ExplanationOfBenefitAdjudication], default: []
        field :bodySite, [Fhir.Generated.ExplanationOfBenefitBodySite1], default: []
        field :detail, [Fhir.Generated.ExplanationOfBenefitDetail1], default: []
        field :detailSequence, [:float], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :factor, :decimal
        field :id, :string
        field :itemSequence, [:float], default: []
        field :locationAddress, Fhir.Generated.Address
        field :locationCodeableConcept, Fhir.Generated.CodeableConcept
        field :locationReference, Fhir.Generated.Reference
        field :modifier, [Fhir.Generated.CodeableConcept], default: []
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :net, Fhir.Generated.Money
        field :noteNumber, [:float], default: []
        field :patientPaid, Fhir.Generated.Money
        field :productOrService, Fhir.Generated.CodeableConcept
        field :productOrServiceEnd, Fhir.Generated.CodeableConcept
        field :programCode, [Fhir.Generated.CodeableConcept], default: []
        field :provider, [Fhir.Generated.Reference], default: []
        field :quantity, Fhir.Generated.Quantity
        field :request, [Fhir.Generated.Reference], default: []
        field :revenue, Fhir.Generated.CodeableConcept
        field :reviewOutcome, Fhir.Generated.ExplanationOfBenefitReviewOutcome
        field :servicedDate, :string
        field :servicedPeriod, Fhir.Generated.Period
        field :subDetailSequence, [:float], default: []
        field :tax, Fhir.Generated.Money
        field :traceNumber, [Fhir.Generated.Identifier], default: []
        field :unitPrice, Fhir.Generated.Money
  end
end
