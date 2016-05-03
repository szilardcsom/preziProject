package PreziHomeAssignment::Controller::Main;
use Mojo::Base 'Mojolicious::Controller';
use Helpers::FileHelper;
use Data::Dumper;

my $file = '/Users/szilardcsom/Documents/preziProject/prezi_home_assignment/static/prezis.txt';

# This action will render a template
sub main {
  my $self = shift;

  $self->render();
}

sub getJSONData {
  my $self = shift;

  $self->render(json => Helpers::FileHelper::loadFromJSON($file));
}

1;
