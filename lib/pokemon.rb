class Pokemon
  attr_accessor :id, :name, :type, :db
  @@all = []
  def initialize(id, name, type, db)
    @id = id
    @name = name
    @type = type
    @db = db
  end

  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (id, name, type) VALUES (?,?,?)",1,name,type)
  end

  def self.find(id,db)
    db.execute("SELECT * FROM pokemon WHERE pokemon.id = ?",1)
  end
end
