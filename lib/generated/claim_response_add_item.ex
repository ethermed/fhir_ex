defmodule Fhir.Generated.ClaimResponseAddItem do
  use TypedStruct

  typedstruct do
    field :_detailSequence, [Fhir.Generated.Element], default: []
        field :_factor, Fhir.Generated.Element
        field :_itemSequence, [Fhir.Generated.Element], default: []
        field :_noteNumber, [Fhir.Generated.Element], default: []
        field :_servicedDate, Fhir.Generated.Element
        field :_subdetailSequence, [Fhir.Generated.Element], default: []
        field :adjudication, [Fhir.Generated.ClaimResponseAdjudication], default: []
        field :bodySite, [Fhir.Generated.ClaimResponseBodySite], default: []
        field :detail, [Fhir.Generated.ClaimResponseDetail1], default: []
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
        field :productOrService, Fhir.Generated.CodeableConcept
        field :productOrServiceEnd, Fhir.Generated.CodeableConcept
        field :programCode, [Fhir.Generated.CodeableConcept], default: []
        field :provider, [Fhir.Generated.Reference], default: []
        field :quantity, Fhir.Generated.Quantity
        field :request, [Fhir.Generated.Reference], default: []
        field :revenue, Fhir.Generated.CodeableConcept
        field :reviewOutcome, Fhir.Generated.ClaimResponseReviewOutcome
        field :servicedDate, :string
        field :servicedPeriod, Fhir.Generated.Period
        field :subdetailSequence, [:float], default: []
        field :tax, Fhir.Generated.Money
        field :traceNumber, [Fhir.Generated.Identifier], default: []
        field :unitPrice, Fhir.Generated.Money
  end
end
