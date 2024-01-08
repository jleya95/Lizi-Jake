using Mastermind;

public class Program
{
    static void Main()
    {
        MastermindClass newGame = new MastermindClass();
        string[] colors = { "red", "green", "blue", "yellow", "orange", "pink", "grey", "white" };

        Console.WriteLine("Welcome to Mastermind!");
        Console.WriteLine("Here are your color choices: ");
        foreach (string color in colors)
        {
            Console.WriteLine(color);
        }

        string[] answer = newGame.GenerateCorrectAnswer(colors);

        Console.WriteLine("Please enter 4 of the colors: ");
        string[] input = newGame.GenerateUserInput();

        while (input.Length != 4)
        {
            Console.WriteLine("Please enter 4 colors.");
            input = newGame.GenerateUserInput();
        }

        foreach (string color in input)
        {
            if (!colors.Contains(color))
            {
                Console.WriteLine("Please select only colors from the list provided.");
                input = newGame.GenerateUserInput();
            }
        }

        int correctPlaceCount = newGame.GetCorrectPlaceCount(answer, input);
        while (correctPlaceCount != 4)
        {
            string indicator = newGame.GetIndicator(answer, input);
            Console.WriteLine(indicator);
            input = newGame.GenerateUserInput();
            correctPlaceCount = newGame.GetCorrectPlaceCount(answer, input);
        }

        
        Console.WriteLine("Congratulations! You win!!");
        
    }

}
