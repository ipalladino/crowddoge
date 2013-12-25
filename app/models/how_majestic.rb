class HowMajestic < ActiveRecord::Base
  attr_accessible :message, :posx, :posy, :color, :ip, :name, :size
  #validate :check_ip
  validates :message, :posx, :posy, presence: true
  validates_numericality_of :posx, :posy, :size ,:only_integer => true
  validates_numericality_of :size, :less_than => 29

    private
      def check_ip
        @awes = HowMajestic.all(:conditions => ["created_at >= ? AND ip = '#{self.ip}'", DateTime.now - 3.minutes])
        #debugger
        if(@awes.length > 0)
          remaining = Time.now - @awes[0].created_at
          remaining = 180 - remaining
          errors.add("Time:", "You need to wait at least #{remaining} seconds to do that again")
        end
      end
end
