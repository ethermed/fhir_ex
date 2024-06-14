defmodule Fhir.v6().Bundle do
  use TypedStruct

  typedstruct do
    field(:_implicitRules, Fhir.v6().Element)
    field(:_language, Fhir.v6().Element)
    field(:_timestamp, Fhir.v6().Element)
    field(:_total, Fhir.v6().Element)
    field(:_type, Fhir.v6().Element)
    field(:entry, [Fhir.v6().BundleEntry], default: [])
    field(:id, :string)
    field(:identifier, Fhir.v6().Identifier)
    field(:implicitRules, :string)
    field(:issues, Fhir.v6().ResourceList)
    field(:language, :string)
    field(:link, [Fhir.v6().BundleLink], default: [])
    field(:meta, Fhir.v6().Meta)
    field(:resourceType, :string, default: "Bundle")
    field(:signature, Fhir.v6().Signature)
    field(:timestamp, :timestamp)
    field(:total, :float)
    field(:type, :string)
  end
end
