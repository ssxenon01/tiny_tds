
ICONV_VERSION = ENV['TINYTDS_ICONV_VERSION'] || "1.14"
ICONV_SOURCE_URI = "http://ftp.gnu.org/pub/gnu/libiconv/libiconv-#{ICONV_VERSION}.tar.gz"

OPENSSL_VERSION = ENV['TINYTDS_OPENSSL_VERSION'] || '1.1.0e'
OPENSSL_SOURCE_URI = "https://www.openssl.org/source/openssl-#{OPENSSL_VERSION}.tar.gz"

FREETDS_VERSION = ENV['TINYTDS_FREETDS_VERSION'] || "1.00.27"
FREETDS_VERSION_INFO = Hash.new { |h,k|
  h[k] = {files: "https://cdnshoppy.s3.amazonaws.com/lib/freetds-1.00.27.tar.bz2"}
}
FREETDS_VERSION_INFO['1.00'] = {files: 'https://cdnshoppy.s3.amazonaws.com/lib/freetds-1.00.27.tar.bz2'}
FREETDS_VERSION_INFO['0.99'] = {files: 'https://cdnshoppy.s3.amazonaws.com/lib/freetds-1.00.27.tar.bz2'}
FREETDS_VERSION_INFO['0.95'] = {files: 'https://cdnshoppy.s3.amazonaws.com/lib/freetds-1.00.27.tar.bz2'}
FREETDS_SOURCE_URI = FREETDS_VERSION_INFO[FREETDS_VERSION][:files]
