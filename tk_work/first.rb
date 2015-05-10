
require 'tk'
root = TkRoot.new { title "Ex1" }
TkLabel.new(root) {
  text  'Hello, World!'
  pack  { padx 30 ; pady 15; side 'left' }
}
Tk.mainloop