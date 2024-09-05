#!/bin/bash
awk -f filename.awk sample.txt
#using awk asa script
#!/bin/bash -f
#function implement
function add(x,y){
    print x+y
}
BEGIN{
    print "start of file"
    #VARIABLE
    name="paul"
    age=12 
    #array
    arr[0]=1
    arr[1]=2
    arr[2]=4 
    #key value array
    marks["math"]=67
    marks["eng"]=90

    #for loop
    for ( i in arr )
            print arr[i]
    for ( subject in marks )
            print "marks in :" subject, marks[subject]
    for ( i=0;i<10;i++ )
            print i
    #while
    count=10
    while (count<=15){
        print count
        count++
    }

    }
#action or pattern
{}
#end
END{
print arr[0], arr[1], arr[2], marks["math"]
add(100, 200) 
}