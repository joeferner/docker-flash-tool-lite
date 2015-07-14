FROM debian

RUN apt-get update && apt-get install -y wget fping gdebi p7zip-full 
RUN apt-get install -y libqtgui4 libqt4-network libqt4-xml libqt4-xmlpatterns libqt4-script
RUN apt-get install -y lib32z1 lib32ncurses5 lib32stdc++6
RUN wget -O /phoneflashtoollite_5.2.4.0_linux_x86_64.deb http://downloadmirror.intel.com/24910/eng/phoneflashtoollite_5.2.4.0_linux_x86_64.deb
RUN echo "phoneflashtoollite      shared/accepted-IPL     boolean true" | debconf-set-selections
RUN dpkg -i /phoneflashtoollite_5.2.4.0_linux_x86_64.deb
ENV QT_GRAPHICSSYSTEM native
