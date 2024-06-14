defmodule Fhir.v6().Group do
  use TypedStruct

  typedstruct do
    field(:_active, Fhir.v6().Element)
    field(:_description, Fhir.v6().Element)
    field(:_implicitRules, Fhir.v6().Element)
    field(:_language, Fhir.v6().Element)
    field(:_membership, Fhir.v6().Element)
    field(:_name, Fhir.v6().Element)
    field(:_quantity, Fhir.v6().Element)
    field(:_type, Fhir.v6().Element)
    field(:active, :boolean)
    field(:characteristic, [Fhir.v6().GroupCharacteristic], default: [])
    field(:code, Fhir.v6().CodeableConcept)
    field(:contained, [Fhir.v6().ResourceList], default: [])
    field(:description, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:identifier, [Fhir.v6().Identifier], default: [])
    field(:implicitRules, :string)
    field(:language, :string)
    field(:managingEntity, Fhir.v6().Reference)
    field(:member, [Fhir.v6().GroupMember], default: [])
    field(:membership, :string)
    field(:meta, Fhir.v6().Meta)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:name, :string)
    field(:quantity, :float)
    field(:resourceType, :string, default: "Group")
    field(:text, Fhir.v6().Narrative)
    field(:type, :string)
  end
end
