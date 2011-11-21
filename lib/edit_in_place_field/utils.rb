module EditInPlaceField
  class Utils

    def self.build_edit_in_place_field_id(object, field)
      if object.is_a?(Symbol) || object.is_a?(String)
        return "edit_in_place_field_#{object}_#{field}"
      end

      id = "edit_in_place_field_#{object.class.to_s.demodulize.underscore}"
      id << "_#{object.id}"
      id << "_#{field}"
      id
    end
  end
end
