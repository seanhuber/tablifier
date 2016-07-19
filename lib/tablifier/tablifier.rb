module Tablifier
  class Base
    include Singleton
    extend ERB::Util

    def erb
      @erb ||= ERB.new File.open(File.join(Gem::Specification.find_by_name('tablifier').gem_dir, 'lib', 'tablifier', 'template.html.erb')).read
    end

    def self.tablify obj
      @obj = obj
      instance.erb.result(binding).html_safe
    end
  end
end

ActionView::Helpers::DebugHelper.module_eval do
  def tablify obj
    Tablifier::Base.tablify obj
  end
end
