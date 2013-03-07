namespace :demo do
	desc "clear out the demo account"
	task :clear => :environment do
    		@army_lists = ArmyList.find(:all,:conditions=>['user_id=?',3])
		@army_lists.each do |army_list|
			army_list.combat_groups.each do |g|
        			g.combat_group_units.each do |c|
          				c.destroy
        			end
        			g.destroy
      			end
      			army_list.destroy
		end

	end
end
