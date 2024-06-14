defmodule Fhir.v6().Permission do
  use TypedStruct

  typedstruct do
    field(:_combining, Fhir.v6().Element)
    field(:_date, [Fhir.v6().Element], default: [])
    field(:_implicitRules, Fhir.v6().Element)
    field(:_language, Fhir.v6().Element)
    field(:_status, Fhir.v6().Element)
    field(:asserter, Fhir.v6().Reference)
    field(:combining, :string)
    field(:contained, [Fhir.v6().ResourceList], default: [])
    field(:date, [:datetime], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:implicitRules, :string)
    field(:justification, Fhir.v6().PermissionJustification)
    field(:language, :string)
    field(:meta, Fhir.v6().Meta)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:resourceType, :string, default: "Permission")
    field(:rule, [Fhir.v6().PermissionRule], default: [])
    field(:status, :string)
    field(:text, Fhir.v6().Narrative)
    field(:validity, Fhir.v6().Period)
  end
end
