
class Test
{
    static void Main(string[] args)
    {
        new Empolyees().display();

        Empolyees obj = new Empolyees();
        //obj.display();

        obj.Name("prasad");
        int a = obj.Add(7, 5);
        Console.WriteLine(a);




        Console.ReadKey();

    }
}