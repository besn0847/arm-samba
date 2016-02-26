FROM resin/rpi-raspbian

RUN apt-get update \
        && apt-get install -y --force-yes --no-install-recommends \
                locales vim wget samba \
        && apt-get autoclean \
        && apt-get autoremove \
        && rm -rf /var/lib/apt/lists/* \
	&& mkdir /data

ADD config/smb.conf /etc/samba/

EXPOSE 139 445

CMD smbd && nmbd -F
