use inc::Module::Install;

all_from 'lib/CogWiki.pm';
readme_from;
manifest_skip;
version_check;
ack_xxx;

requires 'Cog::Cog' => '0.05';
requires 'Mouse';

install_share;

WriteAll;
