defmodule Fhir.VirtualServiceDetail do
  use TypedStruct

  typedstruct do
    field(:_additionalInfo, [Fhir.Element], default: [])
    field(:_addressString, Fhir.Element)
    field(:_addressUrl, Fhir.Element)
    field(:_maxParticipants, Fhir.Element)
    field(:_sessionKey, Fhir.Element)
    field(:additionalInfo, [:string], default: [])
    field(:addressContactPoint, Fhir.ContactPoint)
    field(:addressExtendedContactDetail, Fhir.ExtendedContactDetail)
    field(:addressString, :string)
    field(:addressUrl, :string)
    field(:channelType, Fhir.Coding)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:maxParticipants, :float)
    field(:sessionKey, :string)
  end
end
