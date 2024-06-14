defmodule Fhir.v6().SubstanceDefinitionName do
  use TypedStruct

  typedstruct do
    field(:_name, Fhir.v6().Element)
    field(:_preferred, Fhir.v6().Element)
    field(:domain, [Fhir.v6().CodeableConcept], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:jurisdiction, [Fhir.v6().CodeableConcept], default: [])
    field(:language, [Fhir.v6().CodeableConcept], default: [])
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:name, :string)
    field(:official, [Fhir.v6().SubstanceDefinitionOfficial], default: [])
    field(:preferred, :boolean)
    field(:source, [Fhir.v6().Reference], default: [])
    field(:status, Fhir.v6().CodeableConcept)
    field(:synonym, [Fhir.v6().SubstanceDefinitionName], default: [])
    field(:translation, [Fhir.v6().SubstanceDefinitionName], default: [])
    field(:type, Fhir.v6().CodeableConcept)
  end
end
