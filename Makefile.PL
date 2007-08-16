use ExtUtils::MakeMaker;

WriteMakefile(
        NAME => 'PDL::LinearAlgebra',
        VERSION => 0.04,
	'PREREQ_PM'		=> { PDL },
        DIR =>  [ qw/Trans Real Complex Special/],
       );
__END__

