class Notificacion < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    nombre :string
    cuerpo :text
    fecha :datetime, :name => true
    estado enum_string(:leido,:noleido)
    timestamps
  end
  attr_accessible :nombre, :cuerpo, :fecha, :estado

  # --- Permissions --- #




  def create_permitted?
    false
  end

  def update_permitted?
    false
  end

  def destroy_permitted?
    false
  end

  def view_permitted?(field)
    true
  end

end
