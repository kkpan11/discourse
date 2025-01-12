import Component from "@glimmer/component";
import { action } from "@ember/object";
import { inject as service } from "@ember/service";
import DoNotDisturbModal from "discourse/components/modal/do-not-disturb";
import UserStatusModal from "discourse/components/modal/user-status";
import DoNotDisturb from "discourse/lib/do-not-disturb";

const _extraItems = [];

export function addUserMenuProfileTabItem(item) {
  _extraItems.push(item);
}

export function resetUserMenuProfileTabItems() {
  _extraItems.clear();
}

export default class UserMenuProfileTabContent extends Component {
  @service currentUser;
  @service siteSettings;
  @service userStatus;
  @service modal;

  saving = false;

  get showToggleAnonymousButton() {
    return (
      (this.siteSettings.allow_anonymous_posting &&
        this.currentUser.trust_level >=
          this.siteSettings.anonymous_posting_min_trust_level) ||
      this.currentUser.is_anonymous
    );
  }

  get isInDoNotDisturb() {
    return !!this.#doNotDisturbUntilDate;
  }

  get doNotDisturbDateTime() {
    return this.#doNotDisturbUntilDate.getTime();
  }

  get showDoNotDisturbEndDate() {
    return !DoNotDisturb.isEternal(
      this.currentUser.get("do_not_disturb_until")
    );
  }

  get extraItems() {
    return _extraItems;
  }

  get #doNotDisturbUntilDate() {
    if (!this.currentUser.get("do_not_disturb_until")) {
      return;
    }
    const date = new Date(this.currentUser.get("do_not_disturb_until"));
    if (date < new Date()) {
      return;
    }
    return date;
  }

  @action
  doNotDisturbClick() {
    if (this.saving) {
      return;
    }
    this.saving = true;
    if (this.currentUser.do_not_disturb_until) {
      return this.currentUser.leaveDoNotDisturb().finally(() => {
        this.saving = false;
      });
    } else {
      this.saving = false;
      this.args.closeUserMenu();
      this.modal.show(DoNotDisturbModal);
    }
  }

  @action
  setUserStatusClick() {
    this.args.closeUserMenu();

    this.modal.show(UserStatusModal, {
      model: {
        status: this.currentUser.status,
        pauseNotifications: this.currentUser.isInDoNotDisturb(),
        saveAction: (status, pauseNotifications) =>
          this.userStatus.set(status, pauseNotifications),
        deleteAction: () => this.userStatus.clear(),
      },
    });
  }
}
