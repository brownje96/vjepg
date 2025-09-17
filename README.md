# vjepg
Dockerfile and Compose File for VJ's XMLTV EPG

## Licensing Note
You are being licensed these support files. I have no claims to the intellectual property of VJ's EPG. I am not redistributing it without his permission.

## How to use
Obtain VJ's EPG, add to the src directory. Make sure the filenames match in /src/ and the Dockerfile. Adjust your settings within `docker-compose.yml`. Then run with:

`docker compose up -d --build`

## Required Environmental Variables
|name|purpose|
|----------|----------|
|XMLTV_SRC|XMLTV Source to gather listings from|

## Highly Recommended
|name|purpose|
|----------|----------|
|XMLTV_TZ|Your Timezone. Defaults to America/Chicago|

## Optional
|name|purpose|
|----------|----------|
|EPG_THEME|Defaults to 'classic', your choice of classic,midnight,retro_blue,amber,mono_light|


## Volumes, Optional.
|name|destination|purpose|
|----------|----------|----------|
|/music/|Music|...music.
|my_theme.json|/my_theme.json|Your custom JSON theme. As described below.|

## JSON Theme Format
```
{
  "bg": "#060A0E",
  "header_bg": "#0C1620",
  "header_border": "#283C50",
  "grid_bg": "#0A121A",
  "row_sep": "#16222E",
  "text_primary": "#EBF2FA",
  "text_muted": "#B4C0CC",
  "accent": "#007AFF",
  "block_colors": ["#2463EB", "#10B981", "#EAB308", "#A855F7", "#EF4444", "#3B82F6"]
}
```
