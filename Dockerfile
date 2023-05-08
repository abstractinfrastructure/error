FROM busybox:1.35.0-uclibc as busybox

FROM gcr.io/distroless/base-debian11

# Now copy the static shell into base image.
COPY --from=busybox /bin/sh /bin/sh

CMD /bin/sh -c "exit 1"