module ApplicationHelper

   def display_status(task)
     if task.status == true
        return "Status: Complete"
     else
        return "Status: In Progress"
     end
   end


end
