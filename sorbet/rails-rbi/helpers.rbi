# typed: strong
# This is an autogenerated file for Rails helpers.
# Please rerun bundle exec rake rails_rbi:helpers to regenerate.
module ApplicationHelper
  include Kernel
  include ActionView::Helpers
end

module DeviseHelper
  include Kernel
  include ActionView::Helpers
end

module Importmap::ImportmapTagsHelper
  include Kernel
  include ActionView::Helpers
end

module ActionController::Helpers
  sig { returns(T.all(ApplicationHelper, DeviseHelper, Importmap::ImportmapTagsHelper)) }
  def helpers; end
end
