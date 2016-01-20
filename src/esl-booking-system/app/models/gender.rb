class Gender
  TYPE = [
      MALE = [1, 'Male'],
      FEMALE = [2, 'Female']
  ]

  def self.parse_status(status)
    TYPE.each do |stat|
      if stat[0] == status
        return stat
      end
    end
  end
end