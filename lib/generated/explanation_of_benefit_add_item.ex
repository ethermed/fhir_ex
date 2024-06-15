defmodule Fhir.ExplanationOfBenefitAddItem do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_detailSequence, [Fhir.Element], default: []
        field :_factor, Fhir.Element
        field :_itemSequence, [Fhir.Element], default: []
        field :_noteNumber, [Fhir.Element], default: []
        field :_servicedDate, Fhir.Element
        field :_subDetailSequence, [Fhir.Element], default: []
        field :adjudication, [Fhir.ExplanationOfBenefitAdjudication], default: []
        field :bodySite, [Fhir.ExplanationOfBenefitBodySite1], default: []
        field :detail, [Fhir.ExplanationOfBenefitDetail1], default: []
        field :detailSequence, [:float], default: []
        field :extension, [Fhir.Extension], default: []
        field :factor, :decimal
        field :id, :string
        field :itemSequence, [:float], default: []
        field :locationAddress, Fhir.Address
        field :locationCodeableConcept, Fhir.CodeableConcept
        field :locationReference, Fhir.Reference
        field :modifier, [Fhir.CodeableConcept], default: []
        field :modifierExtension, [Fhir.Extension], default: []
        field :net, Fhir.Money
        field :noteNumber, [:float], default: []
        field :patientPaid, Fhir.Money
        field :productOrService, Fhir.CodeableConcept
        field :productOrServiceEnd, Fhir.CodeableConcept
        field :programCode, [Fhir.CodeableConcept], default: []
        field :provider, [Fhir.Reference], default: []
        field :quantity, Fhir.Quantity
        field :request, [Fhir.Reference], default: []
        field :revenue, Fhir.CodeableConcept
        field :reviewOutcome, Fhir.ExplanationOfBenefitReviewOutcome
        field :servicedDate, :string
        field :servicedPeriod, Fhir.Period
        field :subDetailSequence, [:float], default: []
        field :tax, Fhir.Money
        field :traceNumber, [Fhir.Identifier], default: []
        field :unitPrice, Fhir.Money
  end
end
