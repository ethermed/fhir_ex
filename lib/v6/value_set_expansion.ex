defmodule Fhir.v6().ValueSetExpansion do
  use TypedStruct

  typedstruct do
    field(:_identifier, Fhir.v6().Element)
    field(:_next, Fhir.v6().Element)
    field(:_offset, Fhir.v6().Element)
    field(:_timestamp, Fhir.v6().Element)
    field(:_total, Fhir.v6().Element)
    field(:contains, [Fhir.v6().ValueSetContains], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:identifier, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:next, :string)
    field(:offset, :float)
    field(:parameter, [Fhir.v6().ValueSetParameter], default: [])
    field(:property, [Fhir.v6().ValueSetProperty], default: [])
    field(:timestamp, :datetime)
    field(:total, :float)
  end
end
