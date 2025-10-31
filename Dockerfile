FROM teddysun/v2ray:latest

# تحسينات الأداء
ENV V2RAY_VMESS_AEAD_FORCED=false

USER nobody

EXPOSE 8080

COPY config.json /etc/v2ray/config.json

# تشغيل مع إعدادات محسنة
CMD ["v2ray", "run", "-config", "/etc/v2ray/config.json"]
