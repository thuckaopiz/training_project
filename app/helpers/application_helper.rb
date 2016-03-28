module ApplicationHelper
  def link_to_delete object, klass
    link_to "Delete", object, method: :delete, data: { confirm: 'Are you sure?' }, class: klass
  end

  def link_to_edit object, klass
    link_to "Edit", [:edit, object], class: klass
  end

  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end
end
