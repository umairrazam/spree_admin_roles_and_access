module SpreeAdminRolesAndAccess
  module UserDecorator
    def self.prepended(base)
      base.alias_attribute :roles, :spree_roles
    end

    def is_manager?
      has_spree_role? :manager
    end
  end
end

Spree.user_class.prepend SpreeAdminRolesAndAccess::UserDecorator