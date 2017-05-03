source ${SELFTEST_BASE}/openskope/gdal/test.sh

echo    "r-base package version          : $(dpkg -s r-base | grep Version | awk '{print $2}')"
echo    "libproj-dev package version     : $(dpkg -s libproj-dev | grep Version | awk '{print $2}')"
echo    "llibgeos-3.5.0 package version  : $(dpkg -s libgeos-3.5.0 | grep Version | awk '{print $2}')"
echo    "libgeos-dev apt package version : $(dpkg -s libgeos-dev| grep Version | awk '{print $2}')"
echo    "netcdf-bin package version      : $(dpkg -s netcdf-bin | grep Version | awk '{print $2}')"
echo    "libnetcdf-dev package version   : $(dpkg -s libnetcdf-dev | grep Version | awk '{print $2}')"

echo    "R version                       : $(R --version | grep 'R version')"

echo -n "base r package version          : "; echo $(Rscript -e "cat(as.character(packageVersion('base')))")
echo -n "magrittr r package version      : "; echo $(Rscript -e "cat(as.character(packageVersion('magrittr')))")
echo -n "ncdf4 r package version         : "; echo $(Rscript -e "cat(as.character(packageVersion('ncdf4')))")
echo -n "optparse r package version      : "; echo $(Rscript -e "cat(as.character(packageVersion('optparse')))")
echo -n "raster r package version        : "; echo $(Rscript -e "cat(as.character(packageVersion('raster')))")
echo -n "rgdal r package version         : "; echo $(Rscript -e "cat(as.character(packageVersion('rgdal')))")
echo -n "rgeos r package version         : "; echo $(Rscript -e "cat(as.character(packageVersion('rgeos')))")

