defmodule Fhir.v6().PackagedProductDefinitionPackaging do
  use TypedStruct

  typedstruct do
    field(:_componentPart, Fhir.v6().Element)
    field(:_quantity, Fhir.v6().Element)
    field(:alternateMaterial, [Fhir.v6().CodeableConcept], default: [])
    field(:componentPart, :boolean)
    field(:containedItem, [Fhir.v6().PackagedProductDefinitionContainedItem], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:identifier, [Fhir.v6().Identifier], default: [])
    field(:manufacturer, [Fhir.v6().Reference], default: [])
    field(:material, [Fhir.v6().CodeableConcept], default: [])
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:packaging, [Fhir.v6().PackagedProductDefinitionPackaging], default: [])
    field(:property, [Fhir.v6().PackagedProductDefinitionProperty], default: [])
    field(:quantity, :float)
    field(:shelfLifeStorage, [Fhir.v6().ProductShelfLife], default: [])
    field(:type, Fhir.v6().CodeableConcept)
  end
end
