class TodoSerializer < ActiveModel::Serializer
  # fix for ember-data deserializer not being able to handle non-string ids
  def id
    object.id.to_s
  end
 
  attributes :id, :title, :is_completed
end