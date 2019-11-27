FROM rabits/qt:5.13-desktop
RUN echo "mkdir build && cd build && qmake ../$2 && make && ./$2" >> entrypoint.sh
RUN chmod +x entrypoint.sh
ENTRYPOINT entrypoint.sh

