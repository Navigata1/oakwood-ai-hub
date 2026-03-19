# Church Site DNA Profile — Iron Canvas Phase 1

## Palette (extracted from CSS custom properties)
- **Primary:** Maroon (#8F2A32) — warm, institutional, Oakwood brand
- **Primary Deep:** Dark Maroon (#401216) — hero overlays, footer
- **Primary Light:** Light Maroon (#B83A44) — hover states, accents
- **Accent:** Gold (#DA9100) — CTAs, highlights, warmth
- **Accent Light:** Light Gold (#F5C24C) — secondary accents
- **Accent Soft:** Soft Gold (#FAECD0) — subtle backgrounds
- **Neutral Dark:** Charcoal (#1A1A1A) — text on light backgrounds
- **Neutral Darkest:** Ink (#0A0A0A) — dark sections
- **Neutral Light:** Warm Gray (#F5F3F0) — light section backgrounds
- **Neutral Lightest:** Mist (#FAFAF8) — page background
- **Text Primary:** #1D1D1F
- **Text Secondary:** #6E6E73

## Typography
- **Display/Headlines:** Playfair Display (serif) — editorial, premium
- **Headings:** Sora (sans-serif) — modern, clean
- **Body:** DM Sans (sans-serif) — readable, warm
- **DO NOT replace these fonts.** They are well-chosen and create a premium editorial feel.

## Personality
- Warm, faith-inspired, community-focused
- Editorial photography style (not stock, not AI-generic)
- Oakwood University institutional pride
- "The world isn't slowing down. Neither should we." — forward-thinking but grounded
- Proverbs 29:18 KJV — faith anchor

## Sections (10 total)
1. **hero** — Background image (hero-community.png) with dark overlay, left-aligned headline
2. **stats-ribbon** — Key statistics in a horizontal band
3. **wake-section** — "Why AI? Why Now?" content with hands-learning.png image
4. **learn-section** — 6 program icons (writing, apps, business, education, daily, ministry) at 72x72px
5. **infographic-section** — Large skills infographic (940x525 rendered)
6. **who-section** — 3 audience cards (pathfinders, professionals, elders) with 100x100 images
7. **schedule-section** — Program schedule/timing
8. **philosophy-section** — Abstract tech+faith image (459x195 rendered)
9. **instructor-section** — About the instructor
10. **cta-section** — Final call to action

## Images (16 total)
| File | Type | Rendered Size | Natural Size | Section | Context |
|---|---|---|---|---|---|
| ouc-logo-white.png | Logo | 47x30 | 300x190 | Nav/Hero/Footer | On dark backgrounds |
| ouc-logo-dark.png | Logo | 48x30 | 200x126 | Nav (scrolled) | On light backgrounds |
| hero-community.png | Hero BG | 1320x799 | 1408x768 | hero | CSS background with dark overlay |
| hands-learning.png | Photo | 1128x375 | 1408x768 | wake-section | Generations learning together |
| icon-writing.png | Icon | 72x72 | 1024x1024 | learn-section | Nano Banana generated |
| icon-apps.png | Icon | 72x72 | 1024x1024 | learn-section | Nano Banana generated |
| icon-business.png | Icon | 72x72 | 1024x1024 | learn-section | Nano Banana generated |
| icon-education.png | Icon | 72x72 | 1024x1024 | learn-section | Nano Banana generated |
| icon-daily.png | Icon | 72x72 | 1024x1024 | learn-section | Nano Banana generated |
| icon-ministry.png | Icon | 72x72 | 1024x1024 | learn-section | Nano Banana generated |
| infographic-skills.png | Infographic | 940x525 | 2752x1536 | infographic-section | Full skills overview |
| icon-pathfinders.png | Audience | 100x100 | 1408x768 | who-section | Youth/Pathfinders |
| icon-professionals.png | Audience | 100x100 | 1024x1024 | who-section | Working professionals |
| icon-elders.png | Audience | 100x100 | 1408x768 | who-section | Elders & community |
| abstract-tech-faith.png | Abstract | 459x195 | 1584x672 | philosophy-section | Tech meets faith visual |

## Strengths (PRESERVE)
- Rich maroon/gold palette — warm, institutional, distinct
- Playfair Display serif headlines — editorial premium feel
- Good content structure — logical flow from why → what → who → when → philosophy → CTA
- OUC logo integration — consistent branding
- Nano Banana icons — unique, not generic stock

## Weaknesses (ENHANCE)
- No scroll-triggered reveal animations — sections pop in flat
- Missing hover states on cards and interactive elements
- Some sections feel static — no motion or visual interest
- Hero could be more cinematic (better image blending, subtle parallax)
- Typography hierarchy could be tighter (letter-spacing, line-height refinement)
- No grain/noise texture on dark sections
- Cards in learn-section and who-section are generic equal-height cards
- No transition effects between sections

## Enhancement Priorities (in order)
1. Add IntersectionObserver scroll reveals to all sections (staggered entry)
2. Add hover/active states to all interactive elements (scale, translate, glow)
3. Refine typography (tighter tracking on Playfair headlines, better spacing)
4. Add grain texture to dark sections (hero, philosophy, CTA)
5. Improve hero section (subtle Ken Burns or parallax on bg image)
6. Add glassmorphism or depth to cards (using MAROON tinted shadows, not navy)
7. Replace 6 program icons with higher-quality versions (same style, better rendering)
8. Add smooth section transitions (subtle color/background blending between sections)
