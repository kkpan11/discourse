import { action, get } from "@ember/object";
import DiscourseRoute from "discourse/routes/discourse";
import I18n from "I18n";

export function buildGroupPage(type) {
  return DiscourseRoute.extend({
    type,
    templateName: "group-activity-posts",
    controllerName: "group-activity-posts",

    titleToken() {
      return I18n.t(`groups.${type}`);
    },

    model(params, transition) {
      let categoryId = get(transition.to, "queryParams.category_id");
      return this.modelFor("group").findPosts({ type, categoryId });
    },

    setupController(controller, model) {
      let loadedAll = model.length < 20;
      controller.setProperties({
        model,
        type,
        canLoadMore: !loadedAll,
      });
    },

    @action
    didTransition() {
      return true;
    },
  });
}

export default buildGroupPage("posts");
