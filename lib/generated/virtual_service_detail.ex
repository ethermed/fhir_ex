defmodule Fhir.Generated.VirtualServiceDetail do
  use TypedStruct

  typedstruct do
    field :_additionalInfo, [Fhir.Generated.Element], default: []
        field :_addressString, Fhir.Generated.Element
        field :_addressUrl, Fhir.Generated.Element
        field :_maxParticipants, Fhir.Generated.Element
        field :_sessionKey, Fhir.Generated.Element
        field :additionalInfo, [:string], default: []
        field :addressContactPoint, Fhir.Generated.ContactPoint
        field :addressExtendedContactDetail, Fhir.Generated.ExtendedContactDetail
        field :addressString, :string
        field :addressUrl, :string
        field :channelType, Fhir.Generated.Coding
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :maxParticipants, :float
        field :sessionKey, :string
  end
end
