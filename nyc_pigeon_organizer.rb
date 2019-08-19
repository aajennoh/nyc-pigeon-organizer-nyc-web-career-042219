def nyc_pigeon_organizer(pigeon_hash)
  pigeon_list = {}
  pigeon_hash.each do |keys, values| #key: color, gender, lives. #value: hash
    values.each do |attributes, names| #describe: purple, male, subway...
      names.each do |name| #name: index inside aray
        #check if the empty hash has name inside yet
        if pigeon_list.has_key?(name)
          #check if the value of name key has key(color, gender, lives)
          if pigeon_list[name].has_key?(keys)
          #if name has key already, add the describe value at the current iteration
            pigeon_list[name][keys] << attributes.to_s
          #if name has no key at the current iteration yet, set the new hash
          else
            pigeon_list[name][keys] = [attributes.to_s]
          end
        #set name level 1 -> key level 2 with describe as value of the hash 
        else
          pigeon_list[name] = {keys => [attributes.to_s]} #describe was symbol before so turn it to string
        end
      end
    end
  end
  pigeon_list
end