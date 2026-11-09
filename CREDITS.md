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

**Taken straight from Everkinetic.** 88 illustrations that Workout Guide does
not use come directly from the Everkinetic `dist/svg/` drawings: each
exercise's two poses (`NNNN-relaxation.svg` and `NNNN-tension.svg`) were
rasterized, cropped to the same box so they stay aligned, recoloured for
monochrome display and vector-traced with potrace into a single path per pose,
the same treatment Workout Guide gives its Everkinetic frames. Those files hold
two lines instead of three.

## Fonts

Nunito, by the Nunito Project Authors, under the SIL Open Font License
(`assets/fonts/Nunito-OFL.txt`).
