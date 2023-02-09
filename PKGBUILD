# Maintainer: Magnus Anderson <magnus@iastate.edu>
pkgname=yoga-force-battery-conservation
pkgdesc="Enable battery conservation when above custom% battery for Lenovo Yoga laptops"
url="https://github.com/magnus-ISU/$pkgname"
source=("git+$url")
pkgver=1
pkgrel=1
license=('MIT')
arch=('any')
sha256sums=('SKIP')

package() {
	mkdir -p "${pkgdir}/usr/lib/"
	mkdir -p "${pkgdir}/usr/lib/systemd/system/"
	install -Dm755 "$srcdir/$pkgname/yoga-force-battery-conservation" "${pkgdir}/usr/lib/"
	install -Dm644 "$srcdir/$pkgname/yoga-force-battery-conservation.service "$pkgdir/usr/lib/systemd/system/yoga-force-battery-conservation.service"
}
