module ApplicationHelper
  def link_to_add_ingredients(name, f, association)
    new_object = f.object.send(association).klass.new
    id = new_object.object_id
    ingredients = f.fields_for(association, new_object, child_index: id) do |builder|
      render(association.to_s.singularize + "_ingredients", f: builder)
    end
    link_to(name, '#', class: "add_ingredients", data: {id: id, ingredients: ingredients.gsub("\n", "")})
  end
end
