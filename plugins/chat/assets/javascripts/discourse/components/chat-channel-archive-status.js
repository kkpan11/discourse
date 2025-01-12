import Component from "@glimmer/component";
import { action } from "@ember/object";
import { inject as service } from "@ember/service";
import { htmlSafe } from "@ember/template";
import { isPresent } from "@ember/utils";
import { popupAjaxError } from "discourse/lib/ajax-error";
import getURL from "discourse-common/lib/get-url";
import I18n from "I18n";

export default class ChatChannelArchiveStatus extends Component {
  @service chatApi;
  @service currentUser;

  get shouldRender() {
    return this.currentUser.admin && isPresent(this.args.channel.archive);
  }

  get channelArchiveFailedMessage() {
    const archive = this.args.channel.archive;
    const translationKey = !archive.topicId
      ? "chat.channel_status.archive_failed_no_topic"
      : "chat.channel_status.archive_failed";
    return htmlSafe(
      I18n.t(translationKey, {
        completed: archive.messages,
        total: archive.totalMessages,
        topic_url: this.topicUrl,
      })
    );
  }

  get channelArchiveCompletedMessage() {
    return htmlSafe(
      I18n.t("chat.channel_status.archive_completed", {
        topic_url: this.topicUrl,
      })
    );
  }

  @action
  retryArchive() {
    return this.chatApi
      .createChannelArchive(this.args.channel.id)
      .catch(popupAjaxError);
  }

  get topicUrl() {
    if (!this.args.channel.archive.topicId) {
      return "";
    }
    return getURL(`/t/-/${this.args.channel.archive.topicId}`);
  }
}
