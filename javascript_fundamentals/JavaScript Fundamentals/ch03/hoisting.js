function hoistingTest(boo)
{
    var myNumber = 10;
    if(boo){
     var myNumber = 3;
     document.write("Value of myNumber in condition: ", myNumber, "<br />");
    }
    document.write("Value of myNumber after condition: ", myNumber, "<br />");
}

hoistingTest(true);
//hoistingTest(false);