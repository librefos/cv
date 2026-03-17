FROM debian:bookworm-slim

LABEL description="Lightweight TexLive environment for PDF compilation"

RUN apt-get update && apt-get install -y --no-install-recommends \
    texlive-latex-base        \
    texlive-latex-extra       \
    texlive-fonts-recommended \
    texlive-fonts-extra       \
    texlive-pictures          \
    texlive-lang-portuguese   \
    git                       \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /workspace

CMD ["bash", "toPDF.sh", "cv.tex"]
