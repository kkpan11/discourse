import DButton from "discourse/components/d-button";

const EmptyChannelsList = <template>
  <div class="channel-list-empty-message">
    <svg
      width="217"
      height="163"
      viewBox="0 0 217 163"
      fill="none"
      xmlns="http://www.w3.org/2000/svg"
    >
      <path
        d="M4 128.5C12.5 128.5 30.5 148.5 69.5 142.5C86.9422 139.817 168.5 84.5 197.5 73"
        stroke="var(--tertiary-high)"
        stroke-linecap="round"
        stroke-dasharray="6 6"
      />
      <path
        fill-rule="evenodd"
        clip-rule="evenodd"
        d="M53 15C39.7452 15 29 25.7452 29 39V96.4576C29 109.377 39.2089 119.913 52 120.437V137L74.3809 120.458H156C169.255 120.458 180 109.712 180 96.4576V39C180 25.7452 169.255 15 156 15H53Z"
        fill="var(--secondary)"
      />
      <path
        d="M52 120.437H52.5V119.957L52.0205 119.938L52 120.437ZM52 137H51.5V137.991L52.2972 137.402L52 137ZM74.3809 120.458V119.958H74.2162L74.0837 120.056L74.3809 120.458ZM29.5 39C29.5 26.0213 40.0213 15.5 53 15.5V14.5C39.469 14.5 28.5 25.469 28.5 39H29.5ZM29.5 96.4576V39H28.5V96.4576H29.5ZM52.0205 119.938C39.4962 119.424 29.5 109.108 29.5 96.4576H28.5C28.5 109.647 38.9216 120.402 51.9795 120.937L52.0205 119.938ZM52.5 137V120.437H51.5V137H52.5ZM74.0837 120.056L51.7028 136.598L52.2972 137.402L74.6781 120.86L74.0837 120.056ZM156 119.958H74.3809V120.958H156V119.958ZM179.5 96.4576C179.5 109.436 168.979 119.958 156 119.958V120.958C169.531 120.958 180.5 109.989 180.5 96.4576H179.5ZM179.5 39V96.4576H180.5V39H179.5ZM156 15.5C168.979 15.5 179.5 26.0213 179.5 39H180.5C180.5 25.469 169.531 14.5 156 14.5V15.5ZM53 15.5H156V14.5H53V15.5Z"
        fill="var(--tertiary-high)"
      />
      <ellipse cx="104" cy="156" rx="96" ry="7" fill="var(--primary-low)" />
      <path
        d="M215.833 65.4678L209.881 73.3052C209.749 73.5001 209.525 73.6186 209.283 73.6212C209.158 73.6066 209.033 73.592 208.909 73.525C208.827 73.4803 208.755 73.415 208.695 73.3292L206.751 70.9161L204.851 71.9128C204.691 72.0124 204.513 71.9961 204.369 71.9179C204.142 71.7951 204.057 71.5092 204.18 71.2825L205.252 69.3042C205.341 69.1393 205.46 69.0174 205.598 68.959L213.217 65.6229L204.2 67.8014L202.557 65.7653C202.386 65.5394 202.333 65.244 202.478 64.9761C202.614 64.6765 202.849 64.5374 203.143 64.5366L215.222 64.2836C215.495 64.2716 215.784 64.4279 215.912 64.6838C216.04 64.9397 216.009 65.2428 215.833 65.4678Z"
        fill="var(--tertiary-high)"
      />
      <ellipse
        cx="148"
        cy="18.4167"
        rx="17"
        ry="18.4167"
        fill="var(--primary-low)"
      />
      <path
        d="M147.883 8.27081C149.963 8.27081 151.589 9.013 152.761 10.4974C154.157 12.2552 154.855 15.1702 154.855 19.2425C154.855 23.305 154.152 26.2249 152.746 28.0023C151.584 29.4671 149.963 30.1995 147.883 30.1995C145.793 30.1995 144.108 29.3987 142.829 27.7972C141.55 26.1859 140.91 23.3196 140.91 19.1985C140.91 15.1556 141.613 12.2454 143.02 10.4681C144.182 9.00323 145.803 8.27081 147.883 8.27081ZM147.883 11.6839C147.385 11.6839 146.94 11.845 146.55 12.1673C146.159 12.4798 145.856 13.0462 145.642 13.8665C145.358 14.931 145.217 16.723 145.217 19.2425C145.217 21.762 145.344 23.4954 145.598 24.4427C145.852 25.3802 146.169 26.0052 146.55 26.3177C146.94 26.6302 147.385 26.7864 147.883 26.7864C148.381 26.7864 148.825 26.6302 149.216 26.3177C149.606 25.9954 149.909 25.4241 150.124 24.6038C150.407 23.5491 150.549 21.762 150.549 19.2425C150.549 16.723 150.422 14.9944 150.168 14.0569C149.914 13.1097 149.592 12.4798 149.201 12.1673C148.82 11.845 148.381 11.6839 147.883 11.6839Z"
        fill="var(--primary)"
      />
      <path
        d="M13.013 41.1986C13.4829 41.2395 13.9951 41.6417 14.228 42.2301C14.4696 42.8402 14.3716 43.484 14.057 43.8355L15.3252 47.0389C15.4373 47.3221 15.3665 47.6527 15.1482 47.8652C14.9298 48.0776 14.5988 48.1331 14.3251 48.0146L12.9866 47.4353C11.5265 46.8034 9.87709 46.7758 8.39524 47.3625L8.22091 47.4315L9.32521 50.2209C9.4805 50.6131 9.27441 51.0476 8.90395 51.1943L7.50927 51.7464C7.11702 51.9017 6.69115 51.7174 6.53585 51.3252L5.43155 48.5358C4.64704 48.8464 3.7953 48.4778 3.48472 47.6933L2.65649 45.6013C2.35453 44.8386 2.71451 43.965 3.49901 43.6545L6.46271 42.4811C7.94455 41.8945 9.12808 40.7453 9.7686 39.307L10.3478 37.9685C10.4663 37.6948 10.7455 37.5086 11.0502 37.514C11.3548 37.5195 11.6327 37.7119 11.7362 37.9734L13.013 41.1986ZM7.01486 43.8758L6.84052 43.9448L7.66875 46.0368L7.84309 45.9678C9.58644 45.2776 11.5232 45.2671 13.2748 45.9348L11.0058 40.2036C10.186 41.8893 8.75821 43.1856 7.01486 43.8758Z"
        fill="var(--tertiary-high)"
      />
      <path
        d="M148.762 128.636C149.155 128.701 149.422 129.101 149.358 129.494C149.29 129.91 148.913 130.181 148.52 130.116C148.103 130.048 147.833 129.671 147.901 129.255C147.965 128.862 148.346 128.568 148.762 128.636ZM151.353 129.061C151.746 129.125 152.013 129.525 151.948 129.918C151.888 130.288 151.484 130.578 151.114 130.518C150.721 130.453 150.427 130.073 150.491 129.679C150.559 129.263 150.936 128.992 151.353 129.061ZM153.943 129.485C154.336 129.549 154.626 129.953 154.539 130.343C154.471 130.759 154.094 131.03 153.701 130.965C153.307 130.901 153.014 130.52 153.082 130.104C153.146 129.711 153.527 129.417 153.943 129.485ZM152.02 124.99C155.281 125.524 157.558 128.153 157.126 130.79C156.694 133.427 153.705 135.146 150.443 134.612C149.68 134.486 148.959 134.25 148.345 133.935C147.572 134.307 146.367 134.704 144.956 134.473C144.725 134.435 144.536 134.285 144.504 134.042C144.469 133.823 144.53 133.595 144.718 133.46C144.718 133.46 145.564 132.791 146.059 131.946C145.428 131.011 145.132 129.918 145.31 128.831C145.746 126.171 148.735 124.452 152.02 124.99ZM150.625 133.501C153.262 133.933 155.659 132.64 155.996 130.581C156.329 128.546 154.451 126.528 151.815 126.096C149.178 125.664 146.754 126.977 146.421 129.013C146.258 130.007 146.622 130.827 146.966 131.334L147.369 131.923L147.008 132.529C146.84 132.834 146.625 133.131 146.394 133.378C146.98 133.284 147.484 133.105 147.845 132.927L148.338 132.675L148.843 132.924C149.391 133.204 150.001 133.399 150.625 133.501Z"
        fill="var(--tertiary-high)"
      />
    </svg>

    <span class="channel-title">{{@title}}</span>

    {{#if @showCTA}}
      <DButton @action={{@ctaAction}} class="btn btn-primary">
        {{@ctaTitle}}
      </DButton>
    {{/if}}
  </div>
</template>;

export default EmptyChannelsList;
