defmodule Fhir.v6().Coding do
  use TypedStruct

  typedstruct do
    field(:_code, Fhir.v6().Element)
    field(:_display, Fhir.v6().Element)
    field(:_system, Fhir.v6().Element)
    field(:_userSelected, Fhir.v6().Element)
    field(:_version, Fhir.v6().Element)
    field(:code, :string)
    field(:display, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:system, :string)
    field(:userSelected, :boolean)
    field(:version, :string)
  end
end
