class Pokemon
  attr_accessor :id, :name, :type, :db

  def initialize(array)
    @id = id
    @name = name
    @type = type
    @db = db
  end

  def save
    sql = <<-SQL
      INSERT INTO pokemon (name, grade)
      VALUES (?, ?)
    SQL

    DB[:conn].execute(sql, self.name, self.grade)
  end

  def find
  end


end
