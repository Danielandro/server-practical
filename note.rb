class Notelist 
  def initialize(note = Note)
    @note = note
    @notes = []
  end

  def add_note(text)
    @notes << @note.new(text)
  end
end

class Note
  attr_reader :text

  def initialize(text)
    @text = text
  end
end