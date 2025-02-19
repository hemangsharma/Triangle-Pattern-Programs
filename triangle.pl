print "Enter the number of rows: ";
chomp (my $rows = <STDIN>);

for my $i (1..$rows) {
    print ' ' x ($rows - $i);
    print '* ' x $i;
    print "\n";
}