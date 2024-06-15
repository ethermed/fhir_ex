defmodule Fhir.ClaimResponseAddItem do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_detailSequence, [Fhir.Element], default: []
        field :_factor, Fhir.Element
        field :_itemSequence, [Fhir.Element], default: []
        field :_noteNumber, [Fhir.Element], default: []
        field :_servicedDate, Fhir.Element
        field :_subdetailSequence, [Fhir.Element], default: []
        field :adjudication, [Fhir.ClaimResponseAdjudication], default: []
        field :bodySite, [Fhir.ClaimResponseBodySite], default: []
        field :detail, [Fhir.ClaimResponseDetail1], default: []
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
        field :productOrService, Fhir.CodeableConcept
        field :productOrServiceEnd, Fhir.CodeableConcept
        field :programCode, [Fhir.CodeableConcept], default: []
        field :provider, [Fhir.Reference], default: []
        field :quantity, Fhir.Quantity
        field :request, [Fhir.Reference], default: []
        field :revenue, Fhir.CodeableConcept
        field :reviewOutcome, Fhir.ClaimResponseReviewOutcome
        field :servicedDate, :string
        field :servicedPeriod, Fhir.Period
        field :subdetailSequence, [:float], default: []
        field :tax, Fhir.Money
        field :traceNumber, [Fhir.Identifier], default: []
        field :unitPrice, Fhir.Money
  end
end
