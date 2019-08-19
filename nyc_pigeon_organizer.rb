def nyc_pigeon_organizer(pigeon_hash)
  pigeon_list = {}
  pigeon_hash.each do |keys, values|
    values.each do |attributes, names|
      names.each do |name|
        if pigeon_list.has_key?(name)
          if pigeon_list[name].has_key?(keys)
            pigeon_list[name][keys] << attributes.to_s
          else
            pigeon_list[name][keys] = [attributes.to_s]
          end
        else
          pigeon_list[name] = {keys => [attributes.to_s]}
        end
      end
    end
  end
  pigeon_list
end