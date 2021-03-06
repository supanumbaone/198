class EmailFormatValidator < ActiveModel::EachValidator
  def validate_each(object, attribute, value)
    unless value =~ /\A([\w\.%\+\-]+)@ucsd.edu/i || value =~ /sirusto@gmail.com/i
      object.errors[attribute] << (options[:message] || "must be a UCSD email address")
    end
  end
end