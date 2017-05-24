FROM centos:6

# Install the JASMIN Analysis Platform following instructions from
# https://github.com/cedadev/jasmin_scivm/wiki/Installation
RUN yum install -y epel-release &&  \
    rpm -Uvh http://dist.ceda.ac.uk/yumrepo/RPMS/ceda-yumrepo-0.1-1.ceda.el6.noarch.rpm &&  \
    yum remove -y python-nose &&  \
    yum remove -y python-setuptools &&  \
    sed -i '/\[epel\]/a exclude=grib_api* geos* gdal* grass* GraphicsMagick*' /etc/yum.repos.d/epel.repo &&  \
    yum install -y jasmin-sci-vm
