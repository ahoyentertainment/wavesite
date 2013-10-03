module ApplicationHelper

 # Returns the full title on a per-page basis.
   def title
        base_title = "Wavesite"
        if @title.nil?
            "#{base_title} - A Better Way to Share"
        else
            "#{base_title}/#{@title}"
        end
    end

end
