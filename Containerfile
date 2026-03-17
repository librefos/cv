FROM debian:bookworm-slim

LABEL org.opencontainers.image.authors="librefos"
LABEL org.opencontainers.image.description="Lightweight TexLive environment for PDF compilation"
LABEL org.opencontainers.image.source="https://github.com/librefos/cv"

RUN apt-get update && apt-get install -y --no-install-recommends \
    texlive-latex-base                                           \
    texlive-latex-extra                                          \
    texlive-fonts-recommended                                    \
    texlive-fonts-extra                                          \
    texlive-pictures                                             \
    texlive-lang-portuguese                                      \
    git                                                          \
    && apt-get clean                                             \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /workspace

CMD ["bash", "toPDF.sh", "cv.tex"]
