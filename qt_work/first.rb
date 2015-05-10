require 'Qt'
app = Qt::Application.new(ARGV)
label = Qt::Label.new("Hello World" , nil)
label.resize(150, 30)
app.setMainWidget(label)
label.show()
app.exec()