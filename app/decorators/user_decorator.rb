class UserDecorator < Draper::Decorator
  delegate_all

  def link_to_edit
    h.link_to h.t('.edit', default: h.t("helpers.links.edit")),
              h.edit_user_path(object), class: 'btn btn-primary'
  end

  def link_to_destroy
    h.link_to h.t('.destroy', default: h.t("helpers.links.destroy")),
              h.user_path(object), method: 'delete', class: 'btn btn-danger',
              data: { confirm: h.t('.confirm',
                      default: h.t("helpers.links.confirm", default: 'Are you sure?')) }
  end
end
