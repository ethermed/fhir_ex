defmodule Fhir.VisionPrescriptionLensSpecification do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_add, Fhir.Element
        field :_axis, Fhir.Element
        field :_backCurve, Fhir.Element
        field :_brand, Fhir.Element
        field :_color, Fhir.Element
        field :_cylinder, Fhir.Element
        field :_diameter, Fhir.Element
        field :_eye, Fhir.Element
        field :_power, Fhir.Element
        field :_sphere, Fhir.Element
        field :add, :decimal
        field :axis, :float
        field :backCurve, :decimal
        field :brand, :string
        field :color, :string
        field :cylinder, :decimal
        field :diameter, :decimal
        field :duration, Fhir.Quantity
        field :extension, [Fhir.Extension], default: []
        field :eye, :string
        field :id, :string
        field :modifierExtension, [Fhir.Extension], default: []
        field :note, [Fhir.Annotation], default: []
        field :power, :decimal
        field :prism, [Fhir.VisionPrescriptionPrism], default: []
        field :product, Fhir.CodeableConcept
        field :sphere, :decimal
  end
end
