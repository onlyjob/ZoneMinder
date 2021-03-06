package ONVIF::Analytics::Types::ImagingStatus;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'http://www.onvif.org/ver10/schema' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %FocusStatus_of :ATTR(:get<FocusStatus>);

__PACKAGE__->_factory(
    [ qw(        FocusStatus

    ) ],
    {
        'FocusStatus' => \%FocusStatus_of,
    },
    {
        'FocusStatus' => 'ONVIF::Analytics::Types::FocusStatus',
    },
    {

        'FocusStatus' => 'FocusStatus',
    }
);

} # end BLOCK








1;


=pod

=head1 NAME

ONVIF::Analytics::Types::ImagingStatus

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
ImagingStatus from the namespace http://www.onvif.org/ver10/schema.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * FocusStatus




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # ONVIF::Analytics::Types::ImagingStatus
   FocusStatus =>  { # ONVIF::Analytics::Types::FocusStatus
     Position =>  $some_value, # float
     MoveStatus => $some_value, # MoveStatus
     Error =>  $some_value, # string
   },
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut

