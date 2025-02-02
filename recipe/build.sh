perl Makefile.PL INSTALLDIRS=vendor NO_PERLLOCAL=1 NO_PACKLIST=1
make CC=${CC}
if [[ ${build_platform} == ${target_platform} ]]; then
    make test
fi
make install VERBINST=1
