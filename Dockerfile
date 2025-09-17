FROM debian:trixie
RUN apt-get update -y;
RUN apt-get install ffmpeg python3 python3-pillow python3-requests fonts-dejavu-core -y
WORKDIR /
COPY src/ /

# Web Server port for HLS
EXPOSE 8000

ENV XMLTV_SRC=""
ENV XMLTV_TZ=""
ENV EPG_THEME=""

ENTRYPOINT python3 xmltv_guide_stream_v23.py --xmltv $XMLTV_SRC $( [ -z "${XMLTV_TZ}" ] && echo || echo --tz $XMLTV_TZ ) $( [ -z "${EPG_THEME}" ] && echo || echo --theme $EPG_THEME ) $( [ -f /my_theme.json ] && echo --theme-file my_theme.json || echo ) --font /usr/share/fonts/truetype/dejavu/DejaVuSans.ttf
