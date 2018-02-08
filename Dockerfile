FROM mikafouenski/debian-s6
MAINTAINER mikafouenski

RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF && \
    echo "deb http://download.mono-project.com/repo/debian stretch main" | tee /etc/apt/sources.list.d/mono-official.list && \
    apt update && \
    apt install -y \
        --no-install-recommends \
        --no-install-suggests \
        mono-runtime \
        mono-devel \
        mono-vbnc \
        ca-certificates-mono \
        libmediainfo-dev \
        nuget \
        fsharp \
        referenceassemblies-pcl \
        binutils \
        curl && \
    rm -rf /tmp/* /var/tmp/* /var/lib/apt/lists/*
