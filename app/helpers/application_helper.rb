module ApplicationHelper
  def translate_exif_code(code)
    case code
    when :date_taken then 'Date Taken' 
    when :make then 'Camera Make'
    when :model then 'Camera Model'
    when :shutter_speed then 'Shutter Speed'
    when :aperture then 'Aperture'
    when :focal_length then 'Focal Length'
    when :iso then 'ISO Speed'
    end
  end
end
