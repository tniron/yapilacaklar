---
name: Yapılacaklar
description: A Turkish to-do list that reads like a Şehir Hatları ferry-pier departure board.
colors:
  bar: "#0d2b4e"
  bar-line: "#24466e"
  bar-ink: "#f6f7f4"
  bar-muted: "#b4c4d6"
  ground: "#f6f7f4"
  plate: "#ffffff"
  ink: "#1b1f24"
  muted: "#535e6a"
  rule: "#dde1e5"
  rule-strong: "#c9cfd6"
  signal: "#c8102e"
  signal-ink: "#ffffff"
  fresh: "#e3ebf4"
  focus: "#2f6fb6"
typography:
  display:
    fontFamily: "Barlow Semi Condensed, Arial Narrow, system-ui, sans-serif"
    fontSize: "64px"
    fontWeight: 700
    lineHeight: 0.85
    letterSpacing: "-0.01em"
    fontFeature: "tnum"
  headline:
    fontFamily: "Barlow Semi Condensed, Arial Narrow, system-ui, sans-serif"
    fontSize: "34px"
    fontWeight: 700
    lineHeight: 1
    letterSpacing: "0.005em"
  title:
    fontFamily: "Barlow Semi Condensed, Arial Narrow, system-ui, sans-serif"
    fontSize: "24px"
    fontWeight: 700
    lineHeight: 1.35
    letterSpacing: "0.04em"
  body:
    fontFamily: "Barlow, system-ui, -apple-system, Segoe UI, sans-serif"
    fontSize: "17px"
    fontWeight: 500
    lineHeight: 1.35
    fontFeature: "tnum"
  body-small:
    fontFamily: "Barlow, system-ui, -apple-system, Segoe UI, sans-serif"
    fontSize: "14px"
    fontWeight: 500
    lineHeight: 1.35
  label:
    fontFamily: "Barlow Semi Condensed, Arial Narrow, system-ui, sans-serif"
    fontSize: "15px"
    fontWeight: 600
    lineHeight: 1.35
    letterSpacing: "0.08em"
  label-column:
    fontFamily: "Barlow Semi Condensed, Arial Narrow, system-ui, sans-serif"
    fontSize: "12px"
    fontWeight: 600
    lineHeight: 1.35
    letterSpacing: "0.12em"
  row-number:
    fontFamily: "Barlow Semi Condensed, Arial Narrow, system-ui, sans-serif"
    fontSize: "20px"
    fontWeight: 600
    lineHeight: 1.35
    letterSpacing: "0.08em"
    fontFeature: "tnum"
rounded:
  sm: "4px"
  md: "6px"
spacing:
  gap: "10px"
  pad: "20px"
  pad-wide: "28px"
  row-min: "58px"
  control: "50px"
components:
  button-primary:
    backgroundColor: "{colors.signal}"
    textColor: "{colors.signal-ink}"
    typography: "{typography.label}"
    rounded: "{rounded.md}"
    padding: "0 18px"
    height: "50px"
  button-solid:
    backgroundColor: "{colors.bar}"
    textColor: "{colors.bar-ink}"
    typography: "{typography.label}"
    rounded: "{rounded.md}"
    padding: "0 20px"
    height: "50px"
  button-outline:
    textColor: "{colors.bar}"
    typography: "{typography.label}"
    rounded: "{rounded.md}"
    padding: "0 20px"
    height: "50px"
  input-strip:
    backgroundColor: "{colors.ground}"
    textColor: "{colors.ink}"
    typography: "{typography.body}"
    rounded: "{rounded.md}"
    padding: "0 16px"
    height: "50px"
  input-form:
    backgroundColor: "{colors.plate}"
    textColor: "{colors.ink}"
    typography: "{typography.body}"
    rounded: "{rounded.md}"
    padding: "0 16px"
    height: "50px"
  header-bar:
    backgroundColor: "{colors.bar}"
    textColor: "{colors.bar-ink}"
  filter-tab:
    textColor: "{colors.bar-muted}"
    typography: "{typography.label}"
    height: "48px"
  filter-tab-active:
    textColor: "{colors.bar-ink}"
  board-row:
    textColor: "{colors.ink}"
    typography: "{typography.body}"
    height: "58px"
  board-row-next:
    backgroundColor: "{colors.plate}"
    textColor: "{colors.ink}"
  board-row-fresh:
    backgroundColor: "{colors.fresh}"
---

# Design System: Yapılacaklar

## Overview

**Creative North Star: "İskele"** (the Şehir Hatları ferry-pier departure board)

The list is a departure board, not a stack of cards. A navy enamel header strip carries the product name and, at the right, a giant count of what is left; under it sits an off-white board of numbered rows in three columns (NO / GÖREV / DURUM). One row at a time is the next departure and is the only thing on the board that turns red. When a task is done its status reads TAMAM where it stands, then the row departs down into the Tamamlananlar section and stays briefly lit there, the way a board holds a just-departed sailing.

Density is that of signage: condensed uppercase labels, tabular figures everywhere, generous 58px rows, hairline rules between them. The surface is flat; separation is drawn with 1px lines, never with shadows or floating cards. The rejected default is the soft white card with round checkboxes.

Light and dark follow the system theme (`prefers-color-scheme`); every color token is redefined for dark, the board keeps its structure, and the navy strip stays navy.

**Key Characteristics:**
- Navy enamel strip over an off-white board; red reserved for the single next task and the EKLE button.
- Barlow Semi Condensed uppercase for signage (labels, numbers, statuses, buttons); Barlow for the task text.
- Tabular numerals throughout; zero-padded row numbers (01, 02, ...).
- Flat: 1px rules, 6px corners, no shadows.
- Signature motion: TAMAM in place, then the row travels to Tamamlananlar and holds a fading highlight.

## Colors

A restrained signage palette: one deep navy, one off-white, cool grey rules, and a single funnel red that is rationed.

### Primary
- **Funnel Red** (`signal`): the ferry-funnel red. Used only for the next task's number and its SIRADAKİ status, and for the primary EKLE button. Error message text is the one sanctioned state exception. Paired with **Signal Ink** (`signal-ink`, white) for text on red.

### Secondary
- **Enamel Navy** (`bar`): the header strip and add strip background, the solid auth button, checked checkbox fill, completed-row TAMAM status, row numbers at rest, and text selection. Its edge line within the strip is **Strip Seam** (`bar-line`).
- **Strip Chalk** (`bar-ink`) and **Strip Haze** (`bar-muted`): primary and secondary text on the navy strip (title, count, active tab vs. inactive tabs, account email).

### Neutral
- **Board White** (`ground`): the page; also the add-strip input fill so the field reads as a slot cut into the navy.
- **Plate White** (`plate`): raised plate for the next row, auth inputs, unchecked checkbox face, inline editor.
- **Board Ink** (`ink`): task text, caret, hover state for secondary controls.
- **Faded Ink** (`muted`): BEKLİYOR status, column and section labels, hints, completed task text, placeholders.
- **Hairline** (`rule`) and **Column Rule** (`rule-strong`): row dividers and the stronger rule under column heads and section heads; also checkbox outline and strike-through color.
- **Departed Blue** (`fresh`): the held highlight on a just-completed row.
- **Focus Blue** (`focus`): focus outline on the board and auth surfaces (on the navy strip the outline is `bar-ink` instead).

Dark-mode redefinitions (system-driven): `bar` #0b2340, `bar-line` #1f3d61, `bar-muted` #9fb3c9, `ground` #0b131d, `plate` #111d2b, `ink` #e8edf2, `muted` #9aa8b6, `rule` #1d2a39, `rule-strong` #2a3a4d, `signal` #cf2640 (button fill; white label 5.2:1), `signal-text` #ff6b7f (red text such as SIRADAKİ and errors; 6.2:1 on `plate`), `fresh` #15304f, `focus` #7fb0e8. In dark, elements that use `bar` as ink on the board (row numbers, TAMAM, checked box) flip to `bar-muted` / `bar-ink` so they stay legible.

### Named Rules
**The One Departure Rule.** Red marks exactly one task (01, SIRADAKİ) and the EKLE button. Hover states, the caret, focus, secondary links and tabs use ink or navy, never red. Error text is the only other red.

**The Enamel Strip Rule.** Chrome lives on navy (`bar`); content lives on the off-white board. Do not tint the board with navy panels or put the list on the strip.

## Typography

**Display Font:** Barlow Semi Condensed 600/700 (with Arial Narrow, system-ui), self-hosted woff2, latin + latin-ext
**Body Font:** Barlow 400/500/600 (with system-ui, -apple-system, Segoe UI), self-hosted woff2

**Character:** Condensed grotesque signage over a plain, slightly heavy grotesque body; the pair reads like a municipal timetable. All figures are tabular (`font-variant-numeric: tabular-nums` on body).

### Hierarchy
- **Display** (700, 64px phone / 92px at ≥720px, line-height 0.85): the remaining-task count in the header, right-aligned, captioned İŞ KALDI.
- **Headline** (700, 34px phone / 40px at ≥720px, line-height 1): the product name "Yapılacaklar" on the strip, sentence case.
- **Title** (700, 24px, 0.04em, uppercase): auth screen headings (GİRİŞ YAP, E-POSTANIZI ONAYLAYIN). Empty-state titles use the same voice at 22px.
- **Body** (500, 17px, line-height 1.35): task text, inputs, buttons' size base. Auth sub-copy is 16px at 1.45; small body (14px) for the account line and hints.
- **Label** (600, 0.08em, uppercase): tabs (15px), buttons (16-17px), status column (13px). Column and section heads (NO / GÖREV / DURUM, TAMAMLANANLAR, form labels) are 12px at 0.12em.
- **Row number** (600, 20px): zero-padded 01, 02, ... in navy; red only on the next row.
- **Code entry** (700, 30px, 0.3em tracking, centered): the 6-digit confirmation code field.

### Named Rules
**The Signage Case Rule.** Uppercase is for signage (labels, tabs, statuses, buttons, column heads) set in Barlow Semi Condensed. Task text, the product name and explanatory copy stay in sentence case Barlow.

**The Dotted İ Rule.** Uppercase is produced by `text-transform` and depends on `<html lang="tr">` so i becomes İ (SIRADAKİ, İŞ KALDI). Never hard-code uppercase strings or drop the language attribute.

## Layout

A single centered column, max 720px. Horizontal page padding is 20px on phones and 28px at ≥720px; the header strip is full-bleed navy with its content in the same column.

The board is a 5-column grid: checkbox (44px), number (30px), task (flexible), status (78px, right-aligned), delete (40px), 6px column gap. Rows have a 58px minimum height. Column heads sit above the first row, separated by the stronger rule.

Responsive behavior, single breakpoint at 720px:
- **Phone (<720px):** the add strip (input + EKLE) is fixed to the bottom edge, navy, honoring the safe-area inset; its real height is measured at runtime (ResizeObserver) and written to `--addbar-h` so the page reserves exactly that space even when an error line grows it.
- **Desktop (≥720px):** the add strip sits in flow directly under the header; title and count scale up; board bottom padding grows to 64px.

Touch targets are at least 44px everywhere (checkbox hit area 44×44, delete 40×44, tabs 48px, inputs and buttons 50px; text links get padded hit areas via negative margins).

## Elevation & Depth

Flat. There are no shadows anywhere. Depth is expressed by three means only: the navy strip vs. the off-white board, the white plate under the next row, and 1px rules (`rule` between rows, `rule-strong` under column and section heads, `bar-line` inside the strip).

### Named Rules
**The Hairline Rule.** Separation is a 1px line. No box-shadow, no floating cards, no stacked surfaces.

## Shapes

Gently squared corners: 6px on inputs, buttons, the inline editor and the delete hit area; 4px on the checkbox face and the task text focus ring. Rows and strips are unrounded full-width bands. Icons are inline SVG strokes (check, close), never glyph characters.

## Components

### Buttons
Firm, squared, signage-lettered.
- **Shape:** gently squared (6px), 50px tall.
- **Primary (EKLE):** funnel red with white label, min-width 96px, 0 18px padding. The only red button in the product. Hover brightens slightly (brightness 1.08); active nudges down 1px.
- **Solid (auth primary: GİRİŞ YAP, ONAYLA):** navy fill, chalk label, 1.5px navy border. In dark it inverts to chalk fill, navy label.
- **Outline (auth secondary: HESAP OLUŞTUR, KODU TEKRAR GÖNDER):** transparent with 1.5px navy border and navy label.
- **Text links (Çıkış yap, Temizle, Geri dön):** underlined, offset 3px, muted or chalk; hover goes to ink, never red.
- **Disabled:** 55% opacity.

### Inputs / Fields
- **Style:** 50px tall, 6px corners, 0 16px padding, body type. On the navy add strip the field is a Board White slot with no border; on auth screens it is Plate White with a `rule-strong` 1px border.
- **Focus:** 2px outline in `focus` (auth, board) or `bar-ink` (on the navy strip); auth fields also shift the border to `focus`.
- **Error:** message text below the form in `signal`. On the navy add strip the error line uses a pale pink tint (#ffd2d8) because funnel red does not read on navy.

### Navigation (filter tabs)
TÜMÜ / AKTİF / BİTEN, each carrying its count, equal-width across the strip under a `bar-line` top rule. Inactive in Strip Haze; active (`aria-pressed`) in Strip Chalk with a 3px chalk underline. Hover lifts to chalk. 48px tall.

### Departure Board Row (signature)
- **Columns:** checkbox, zero-padded number, task text, status, delete.
- **Status vocabulary:** SIRADAKİ (next, red), BEKLİYOR (waiting, muted), TAMAM (done, navy).
- **Next row:** Plate White background; number and status in red.
- **Done row:** task text muted with a 1.5px `rule-strong` strike-through; number muted; TAMAM in navy.
- **Checkbox:** 22px square face, 4px corners, 1.5px `rule-strong` outline, inline SVG check; hover outlines in ink; checked fills navy.
- **Delete:** inline SVG ×, muted, hover ink. On hover-capable devices it is hidden until row hover or focus.
- **Editing:** task text is keyboard-focusable; Enter or F2 opens the inline editor (40px, 6px corners, 1px `focus` border); double-click on desktop and double-tap (320ms window) on touch also edit.

### Departure motion (signature interaction)
On check, the row's status reads TAMAM in place for 350ms (text muted, status navy), then the row FLIP-animates from its old position into the Tamamlananlar section (520ms, cubic-bezier(.16, 1, .3, 1)) and holds a Departed Blue highlight that fades over about 2.6s. With `prefers-reduced-motion: reduce` there is no travel and the highlight is held without fading; all transitions are disabled.

### Section head (Tamamlananlar)
12px signage label with the count, right-aligned TEMİZLE text link, `rule-strong` underline. Separates the departed rows from the board.

## Do's and Don'ts

### Do:
- **Do** reserve `signal` red for the single next task and the EKLE button; error text is the only other use.
- **Do** separate with 1px rules (`rule`, `rule-strong`, `bar-line`) and keep every surface flat.
- **Do** set signage in Barlow Semi Condensed uppercase with 0.08em tracking (0.12em at 12px) and keep tabular figures.
- **Do** keep corners at 6px (4px for the checkbox face).
- **Do** keep touch targets at least 44px and every task keyboard-editable (Enter / F2).
- **Do** redefine tokens for dark mode via `prefers-color-scheme` rather than adding a manual toggle.
- **Do** keep UI strings in Turkish and `lang="tr"` on the document.

### Don't:
- **Don't** use red for hover, focus, caret, tabs, links or decorative accents.
- **Don't** add box-shadows, floating cards or elevated panels.
- **Don't** use round checkboxes or a white-card list; the board is rows and rules.
- **Don't** use glyph characters for icons; use inline SVG.
- **Don't** add eyebrow or kicker labels above headings; uppercase signage is for functional labels only.
