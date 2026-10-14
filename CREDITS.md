# Credits

## Exercise illustrations

The exercise art in `assets/art/` comes from
[Workout Guide](https://github.com/bryllim/workout-guide) by
[Bryl Lim](https://bryllim.com), which builds on pose artwork from
[Everkinetic](https://github.com/everkinetic/data).

Both are licensed under
[CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/), and GymMane's
copy stays under that same license — the rest of the app is GPLv3.

**Changes made.** Each Workout Guide frame is a 512 × 512 SVG holding a single
`<path>`. That path data was lifted into one plain-text file per exercise —
three lines, one per frame — so the app draws it with `path_drawing` and tints
it with the current theme instead of shipping a fixed-colour image. The
geometry is untouched.

Every exercise in the catalogue names the illustration it uses in its `art:`
field, and the files under `assets/art/` are named after the Workout Guide
exercise they come from, so any frame can be traced back to its original.
Several exercises share one illustration when they are the same movement done
with different equipment.

**Taken straight from Everkinetic.** 87 illustrations that Workout Guide does
not use come directly from the Everkinetic `dist/svg/` drawings: each
exercise's two poses (`NNNN-relaxation.svg` and `NNNN-tension.svg`) were
rasterized, cropped to the same box so they stay aligned, recoloured for
monochrome display and vector-traced with potrace into a single path per pose,
the same treatment Workout Guide gives its Everkinetic frames. Those files hold
two lines instead of three.

<details>
<summary>Everkinetic number behind each file</summary>

| `assets/art/` | Everkinetic |
|---|---|
| `ball-curl-leg-raised` | 0263 |
| `ball-seated-curl` | 0255 |
| `ball-side-bend` | 0208 |
| `band-biceps-curl` | 0261 |
| `band-calf-raise` | 0274 |
| `band-chest-fly` | 0050 |
| `band-reverse-fly` | 0020 |
| `band-upright-row` | 0094 |
| `barbell-behind-head-triceps-extension` | 0179 |
| `barbell-bench-front-squat` | 0139 |
| `barbell-bench-squat` | 0133 |
| `barbell-bent-arm-pullover` | 0045 |
| `barbell-close-grip-curl` | 0219 |
| `barbell-concentration-curl` | 0242 |
| `barbell-decline-wide-grip-press` | 0083 |
| `barbell-decline-wide-grip-pullover` | 0064 |
| `barbell-front-raise-and-pullover` | 0058 |
| `barbell-hack-squat` | 0125 |
| `barbell-incline-triceps-extension` | 0174 |
| `barbell-lunge` | 0114 |
| `barbell-one-arm-snatch` | 0148 |
| `barbell-one-leg-squat` | 0147 |
| `barbell-rear-delt-row` | 0028 |
| `barbell-reverse-lunge` | 0128 |
| `barbell-seated-overhead-press` | 0004 |
| `barbell-seated-overhead-triceps-extension` | 0193 |
| `barbell-single-leg-split-squat` | 0132 |
| `barbell-step-up` | 0134 |
| `barbell-wide-bench-press` | 0082 |
| `barbell-wide-squat` | 0160 |
| `bench-leg-raise` | 0021 |
| `cable-bent-over-rear-delt-raise` | 0017 |
| `cable-incline-triceps-extension` | 0164 |
| `cable-internal-rotation` | 0034 |
| `cable-kneeling-concentration-extension` | 0176 |
| `cable-lying-close-grip-curl` | 0233 |
| `cable-lying-curl` | 0232 |
| `cable-lying-triceps-extension` | 0165 |
| `cable-preacher-curl` | 0217 |
| `cable-shrug` | 0009 |
| `cable-upright-row` | 0015 |
| `cross-body-crunch` | 0289 |
| `cross-body-hammer-curl` | 0221 |
| `decline-chest-press-machine` | 0085 |
| `decline-close-grip-skull-press` | 0168 |
| `dumbbell-bench-squat` | 0136 |
| `dumbbell-decline-fly` | 0053 |
| `dumbbell-hammer-preacher-curl` | 0240 |
| `dumbbell-lying-triceps-extension` | 0184 |
| `dumbbell-one-arm-preacher-curl` | 0237 |
| `dumbbell-preacher-curl` | 0249 |
| `dumbbell-pullover` | 0079 |
| `dumbbell-reverse-curl` | 0257 |
| `dumbbell-seated-one-leg-calf-raise` | 0276 |
| `dumbbell-squat` | 0130 |
| `dumbbell-upright-row` | 0016 |
| `flat-bench-cable-fly` | 0057 |
| `incline-dumbbell-fly` | 0062 |
| `incline-dumbbell-hammer-press` | 0059 |
| `jm-press` | 0175 |
| `lying-rear-lateral-raise` | 0023 |
| `machine-biceps-curl` | 0253 |
| `machine-triceps-extension` | 0210 |
| `overhead-squat` | 0151 |
| `reverse-grip-bench-press` | 0190 |
| `reverse-grip-lat-pulldown` | 0095 |
| `reverse-grip-triceps-pushdown` | 0189 |
| `rocking-calf-raise` | 0278 |
| `seated-dumbbell-curl` | 0243 |
| `single-arm-cable-curl` | 0247 |
| `single-arm-cable-pushdown` | 0166 |
| `single-arm-dumbbell-bench-press` | 0068 |
| `single-arm-dumbbell-shoulder-press` | 0038 |
| `smith-close-grip-bench-press` | 0195 |
| `smith-good-morning` | 0102 |
| `smith-hack-squat` | 0126 |
| `smith-incline-bench-press` | 0081 |
| `smith-rear-delt-row` | 0022 |
| `smith-reverse-calf-raise` | 0280 |
| `smith-shrug` | 0041 |
| `smith-upright-row` | 0013 |
| `tate-press` | 0203 |
| `v-bar-pushdown` | 0207 |
| `weighted-sissy-squat` | 0158 |
| `wide-grip-barbell-curl` | 0250 |
| `zercher-squat` | 0161 |
| `zottman-curl` | 0251 |

</details>

## Fonts

Nunito, by the Nunito Project Authors, under the SIL Open Font License
(`assets/fonts/Nunito-OFL.txt`).
