class Updatesectorial < ActiveRecord::Migration
  def self.up
    #add_column(:armies, :parent_army_id, :int);
  # add_column(:availabilities, :army_id, :int);
   # add_column(:availabilities, :unit_id, :int);
   # add_column(:availabilities, :avail, :int);
    
    
    # update availabilities for all the standard units
    Unit.find(:all).each do |unit|
     ava = Availability.new
      ava.army_id = unit.army_id
      ava.unit_id = unit.id
      ava.avail = unit.avail
      ava.save
    end
    
    #add the japanese Sectorial
    jsec = Army.new
    jsec.name = "Japanese Sectorial"
    jsec.parent_army_id = 6
    jsec.save
    
    #add the availabilities
    
    updateunit = Unit.find(:first,:conditions=>["name=?","Keisotsu"])
    ava = Availability.new
    ava.avail = -1
    ava.army_id = jsec.id
    ava.unit_id = updateunit.id
    ava.save
    
    updateunit = Unit.find(:first,:conditions=>["name=?","Kempeitai"])
    ava = Availability.new
    ava.avail = 2
    ava.army_id = jsec.id
    ava.unit_id = updateunit.id
    ava.save
    
    updateunit = Unit.find(:first,:conditions=>["name=?","Aragoto"])
    ava = Availability.new
    ava.avail = 4
    ava.army_id = jsec.id
    ava.unit_id = updateunit.id
    ava.save
    
    updateunit = Unit.find(:first,:conditions=>["name=?","Karakuri"])
    ava = Availability.new
    ava.avail = 3
    ava.army_id = jsec.id
    ava.unit_id = updateunit.id
    ava.save
    
    updateunit = Unit.find(:first,:conditions=>["name=?","Domaru"])
    ava = Availability.new
    ava.avail = 5
    ava.army_id = jsec.id
    ava.unit_id = updateunit.id
    ava.save
    
    updateunit = Unit.find(:first,:conditions=>["name=?","Yaokong (Guardian)"])
    ava = Availability.new
    ava.avail = 1
    ava.army_id = jsec.id
    ava.unit_id = updateunit.id
    ava.save
    
    updateunit = Unit.find(:first,:conditions=>["name=?","Yaokong (Escort)"])
    ava = Availability.new
    ava.avail = 1
    ava.army_id = jsec.id
    ava.unit_id = updateunit.id
    ava.save
    
    updateunit = Unit.find(:first,:conditions=>["name=?","Yaozao"])
    ava = Availability.new
    ava.avail = 1
    ava.army_id = jsec.id
    ava.unit_id = updateunit.id
    ava.save
    
   
   updateunit = Unit.find(:first,:conditions=>["name=?","Ninja"])
   ava = Availability.new
   ava.avail = 4
   ava.army_id = jsec.id
   ava.unit_id = updateunit.id
   ava.save 
   
    updateunit = Unit.find(:first,:conditions=>["name=?","Oniwaban"])
    ava = Availability.new
    ava.avail = 3
    ava.army_id = jsec.id
    ava.unit_id = updateunit.id
    ava.save
    
    
    
  end

  def self.down
  end
end
