BEGIN{
    print "start of file"
}
{
    if($NF>50000)
        $7="High"
    else 
        $7="Low"
    print $0
}
END{
    print "end of file"
}