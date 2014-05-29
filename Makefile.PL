use ExtUtils::MakeMaker;

WriteMakefile(
        'NAME' => 'PDL::LinearAlgebra',
        'ABSTRACT' => 'PDL bindings to some BLAS and LAPACK library routines',
        'AUTHOR' => [ 'Chris Marshall <chm@cpan.org>' ],
        'VERSION_FROM' => 'LinearAlgebra.pm',
        'LICENSE' => 'artistic_2',
        'META_MERGE' => {
           resources => {
              homepage => 'http://pdl.perl.org/',
              repository  => {
                 url => 'git://git.code.sf.net/p/pdl/pdl-linearalgebra',
                 type => 'git',
                 web => 'http://sourceforge.net/p/pdl/pdl-linearalgebra/ci/master/tree/',
              },
           },
        },
        'CONFIGURE_REQUIRES' =>  { "PDL" => 0, },
        'BUILD_REQUIRES' =>  { "PDL" => 0, },
	'PREREQ_PM' => { "PDL" => 0, },
        'DIR' =>  [ qw/Trans Real Complex Special/],
        'dist' => { PREOP=> 'cd $(DISTVNAME)'
                            . ' && $(PERL) "-MPDL::PP qw[PDL::LinearAlgebra::Trans   PDL::LinearAlgebra::Trans   TEMPORARY_Trans]"   ../Trans/trans.pd'
                            . ' && $(PERL) "-MPDL::PP qw[PDL::LinearAlgebra::Real    PDL::LinearAlgebra::Real    TEMPORARY_Real]"    ../Real/real.pd'
                            . ' && $(PERL) "-MPDL::PP qw[PDL::LinearAlgebra::Complex PDL::LinearAlgebra::Complex TEMPORARY_Complex]" ../Complex/complex.pd'
                            . ' && $(RM_F) TEMPORARY_*.xs'
                  }
       );
__END__

