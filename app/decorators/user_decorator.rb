class UserDecorator < Draper::Decorator
  delegate_all

  def link_to_edit
    if h.policy(self).update?
      h.link_to h.t('.edit', default: h.t("helpers.links.edit")),
                h.edit_user_path(self), class: 'btn btn-primary'
    end
  end

  def link_to_destroy
    if h.policy(self).destroy?
      h.link_to h.t('.destroy', default: h.t("helpers.links.destroy")),
                h.user_path(self), method: 'delete', class: 'btn btn-danger',
                data: { confirm: h.t('.confirm',
                        default: h.t("helpers.links.confirm", default: 'Are you sure?')) }
    end
  end
end
