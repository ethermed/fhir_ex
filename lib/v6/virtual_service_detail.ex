defmodule Fhir.v6().VirtualServiceDetail do
  use TypedStruct

  typedstruct do
    field(:_additionalInfo, [Fhir.v6().Element], default: [])
    field(:_addressString, Fhir.v6().Element)
    field(:_addressUrl, Fhir.v6().Element)
    field(:_maxParticipants, Fhir.v6().Element)
    field(:_sessionKey, Fhir.v6().Element)
    field(:additionalInfo, [:string], default: [])
    field(:addressContactPoint, Fhir.v6().ContactPoint)
    field(:addressExtendedContactDetail, Fhir.v6().ExtendedContactDetail)
    field(:addressString, :string)
    field(:addressUrl, :string)
    field(:channelType, Fhir.v6().Coding)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:maxParticipants, :float)
    field(:sessionKey, :string)
  end
end
