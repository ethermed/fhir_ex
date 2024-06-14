defmodule Fhir.ValueSetExpansion do
  use TypedStruct

  typedstruct do
    field(:_identifier, Fhir.Element)
    field(:_next, Fhir.Element)
    field(:_offset, Fhir.Element)
    field(:_timestamp, Fhir.Element)
    field(:_total, Fhir.Element)
    field(:contains, [Fhir.ValueSetContains], default: [])
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:identifier, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:next, :string)
    field(:offset, :float)
    field(:parameter, [Fhir.ValueSetParameter], default: [])
    field(:property, [Fhir.ValueSetProperty], default: [])
    field(:timestamp, :datetime)
    field(:total, :float)
  end
end
