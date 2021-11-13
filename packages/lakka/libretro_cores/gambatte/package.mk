PKG_NAME="gambatte"
PKG_VERSION="b0c79f083398a2d155bfeb788ba68c00b9109331"
PKG_LICENSE="GPLv2"
PKG_SITE="https://github.com/libretro/gambatte-libretro"
PKG_URL="${PKG_SITE}.git"
PKG_DEPENDS_TARGET="toolchain"
PKG_LONGDESC="libretro implementation of libgambatte, an open-source Game Boy Color emulator written for fun and made available in the hope that it will be useful."
PKG_TOOLCHAIN="make"

PKG_MAKE_OPTS_TARGET="-f Makefile.libretro"

makeinstall_target() {
  mkdir -p ${INSTALL}/usr/lib/libretro
    cp -v gambatte_libretro.so ${INSTALL}/usr/lib/libretro/
}
