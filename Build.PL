use strict;
use warnings;
use Module::Build;
my $build = Module::Build->new(
	module_name => 'MS::BotBuilder',
	license => 'perl',
	dist_author => 'MacGyveR <dumb@cpan.org>',
	dist_abstract => '',
	requires => {
		'Log::Any' => 0,
		'URI::Query' => 0
	},
	build_requires => {
	},
	create_makefile_pl => 'traditional',
	meta_merge => {
		resources => {
			repository => 'https://github.com/thedumbterminal/MS-BotBuilder'
		}
	}
);
$build->create_build_script;
