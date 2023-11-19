import { on } from '@ember/modifier';

import { Switch } from 'ember-primitives';
import { colorScheme } from 'ember-primitives/color-scheme';

import { Moon, Sun } from './-private/icons';

import type { TOC } from '@ember/component/template-only';

import './theme-toggle.css';

function toggleTheme() {
  if (colorScheme.current === 'dark') {
    colorScheme.update('light');
  } else {
    colorScheme.update('dark');
  }
}

function isDark() {
  return colorScheme.current === 'dark';
}

export const ThemeToggle: TOC<{}> = <template>
  <Switch class='preem__site-theme-toggle' as |s|>
    <s.Control name='color-scheme' checked={{(isDark)}} {{on 'change' toggleTheme}} />
    <s.Label>
      <span class='preem__sr-only'>Toggle between light and dark mode</span>
      {{!
        🎵 It's raining, it's pouring, ... 🎵
        https://www.youtube.com/watch?v=ll5ykbAumD4
      }}
      <Moon />
      <Sun />
      <span class='ball'></span>
    </s.Label>
  </Switch>
</template>;
