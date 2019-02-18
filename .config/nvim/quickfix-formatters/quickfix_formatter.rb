# this formatter is referenced from my rspec shortcuts in vimrc.  thanks to ronin on rails
# this file needs to be save in the root of a ruby project
class QuickfixFormatter
  RSpec::Core::Formatters.register self, :example_failed

  def initialize(output)
    @output = output
  end

  def example_failed(notification)
    @output << format(notification) + "\n"
  end

  private

  def format(notification)
    rtn = "%s: %s" % [notification.example.location, notification.exception.message]
    rtn.gsub("\n", ' ')[0,160]
  end
end
