FROM sarveshk29/py_linters_image

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]