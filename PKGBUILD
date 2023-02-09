# Maintainer: Magnus Anderson <magnus@iastate.edu>
pkgname=yoga-custom-battery-conservation
pkgdesc="Enable battery conservation when above custom% battery for Lenovo Yoga laptops"
url="https://github.com/magnus-ISU/yoga-force-battery-conservation"
source=("git+$url.git")
pkgver=1
pkgrel=1
license=('MIT')
arch=('any')
sha256sums=('SKIP')

package() {
	mkdir -p "${pkgdir}/usr/lib/"
	mkdir -p "${pkgdir}/usr/lib/systemd/system/"
	install -Dm755 "$srcdir/$pkgname/yoga-custom-battery-conservation.sh" "${pkgdir}/usr/lib/"
	install -Dm644 "$srcdir/$pkgname/yoga-custom-battery-conservation.service" "$pkgdir/usr/lib/systemd/system/"
}
