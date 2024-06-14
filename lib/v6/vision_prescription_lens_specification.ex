defmodule Fhir.v6().VisionPrescriptionLensSpecification do
  use TypedStruct

  typedstruct do
    field(:_add, Fhir.v6().Element)
    field(:_axis, Fhir.v6().Element)
    field(:_backCurve, Fhir.v6().Element)
    field(:_brand, Fhir.v6().Element)
    field(:_color, Fhir.v6().Element)
    field(:_cylinder, Fhir.v6().Element)
    field(:_diameter, Fhir.v6().Element)
    field(:_eye, Fhir.v6().Element)
    field(:_power, Fhir.v6().Element)
    field(:_sphere, Fhir.v6().Element)
    field(:add, :decimal)
    field(:axis, :float)
    field(:backCurve, :decimal)
    field(:brand, :string)
    field(:color, :string)
    field(:cylinder, :decimal)
    field(:diameter, :decimal)
    field(:duration, Fhir.v6().Quantity)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:eye, :string)
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:note, [Fhir.v6().Annotation], default: [])
    field(:power, :decimal)
    field(:prism, [Fhir.v6().VisionPrescriptionPrism], default: [])
    field(:product, Fhir.v6().CodeableConcept)
    field(:sphere, :decimal)
  end
end
