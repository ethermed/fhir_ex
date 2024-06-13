defmodule Fhir.Generated.VisionPrescriptionLensSpecification do
  use TypedStruct

  typedstruct do
    field :_add, Fhir.Generated.Element
        field :_axis, Fhir.Generated.Element
        field :_backCurve, Fhir.Generated.Element
        field :_brand, Fhir.Generated.Element
        field :_color, Fhir.Generated.Element
        field :_cylinder, Fhir.Generated.Element
        field :_diameter, Fhir.Generated.Element
        field :_eye, Fhir.Generated.Element
        field :_power, Fhir.Generated.Element
        field :_sphere, Fhir.Generated.Element
        field :add, :decimal
        field :axis, :float
        field :backCurve, :decimal
        field :brand, :string
        field :color, :string
        field :cylinder, :decimal
        field :diameter, :decimal
        field :duration, Fhir.Generated.Quantity
        field :extension, [Fhir.Generated.Extension], default: []
        field :eye, :string
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :note, [Fhir.Generated.Annotation], default: []
        field :power, :decimal
        field :prism, [Fhir.Generated.VisionPrescriptionPrism], default: []
        field :product, Fhir.Generated.CodeableConcept
        field :sphere, :decimal
  end
end
