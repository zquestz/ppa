#!/bin/bash

set -e
set -v

export KEYNAME=B6DE3514E07E30BB5F408D74E49B7E0000228DDD

cd ./ubuntu/

# Generate Packages file listing all packages in the repository
dpkg-scanpackages --multiversion . > Packages

# Create a gzipped version of the Packages file
gzip -k -f Packages

# Generate Release file with repository metadata
apt-ftparchive release . > Release

# Sign the Release file
gpg --yes -u "${KEYNAME}" -abs -o Release.gpg Release
gpg --yes -u "${KEYNAME}" --clearsign -o InRelease Release

cd ../debian/

# Generate Packages file listing all packages in the repository
dpkg-scanpackages --multiversion . > Packages

# Create a gzipped version of the Packages file
gzip -k -f Packages

# Generate Release file with repository metadata
apt-ftparchive release . > Release

# Sign the Release file
gpg --yes -u "${KEYNAME}" -abs -o Release.gpg Release
gpg --yes -u "${KEYNAME}" --clearsign -o InRelease Release
