defmodule Fhir.Group do
  use TypedStruct

  typedstruct do
    field(:_active, Fhir.Element)
    field(:_description, Fhir.Element)
    field(:_implicitRules, Fhir.Element)
    field(:_language, Fhir.Element)
    field(:_membership, Fhir.Element)
    field(:_name, Fhir.Element)
    field(:_quantity, Fhir.Element)
    field(:_type, Fhir.Element)
    field(:active, :boolean)
    field(:characteristic, [Fhir.GroupCharacteristic], default: [])
    field(:code, Fhir.CodeableConcept)
    field(:contained, [Fhir.ResourceList], default: [])
    field(:description, :string)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:identifier, [Fhir.Identifier], default: [])
    field(:implicitRules, :string)
    field(:language, :string)
    field(:managingEntity, Fhir.Reference)
    field(:member, [Fhir.GroupMember], default: [])
    field(:membership, :string)
    field(:meta, Fhir.Meta)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:name, :string)
    field(:quantity, :float)
    field(:resourceType, :string, default: "Group")
    field(:text, Fhir.Narrative)
    field(:type, :string)
  end
end
