import './external-link.css';

import { ExternalLink as PrimitiveExternalLink } from 'ember-primitives/components/external-link';

import { Arrow } from './-private/icons.gts';

import type { TOC } from '@ember/component/template-only';

export const ExternalLink: TOC<{
  Element: HTMLAnchorElement;
  Blocks: {
    default: [];
  };
}> = <template>
  <PrimitiveExternalLink class='preem__external-link' ...attributes>
    <span class='preem__external-link__link-content'>{{yield}}</span>
    <Arrow />
  </PrimitiveExternalLink>
</template>;
