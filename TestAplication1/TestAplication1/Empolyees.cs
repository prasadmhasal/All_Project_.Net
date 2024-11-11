class Empolyees
{
    public void display()
    {
        Console.WriteLine("This is my non-static method");


    }
    public static void display1()
    {
        Console.WriteLine("This is my static method");
    }

    public void Name(string name)
    {
        Console.WriteLine($"Emp Name is {name}");
    }
    public int Add(int x , int y)
    {
        double c;
        c = x + y;
        int d = (int)c;
        return d;
        
    }
}

