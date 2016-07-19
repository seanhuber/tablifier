module Tablifier
  class Base
    include Singleton
    extend ERB::Util

    def erb
      @erb ||= ERB.new File.open(File.join(Gem::Specification.find_by_name('tablifier').gem_dir, 'lib', 'tablifier', 'template.html.erb')).read
    end

    def self.tablify obj
      raise ArgumentError, "tablify is only implemented for Hash and ActiveRecord objects, not: '#{obj.class_name}'" unless obj.is_a?(Hash) || obj.is_a?(ActiveRecord::Base)
      @class_name = obj.class.name
      @h = if obj.is_a?(ActiveRecord::Base)
        @obj_id = obj.id
        @to_s = @obj.to_s
        obj.attributes
      else
        obj.map{|k,v| [k.to_s,v]}.to_h
      end
      instance.erb.result(binding).html_safe
    end
  end
end

ActionView::Helpers::DebugHelper.module_eval do
  def tablify obj
    Tablifier::Base.tablify obj
  end
end
