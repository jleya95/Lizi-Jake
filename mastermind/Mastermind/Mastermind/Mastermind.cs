namespace Mastermind
{
    public class MastermindClass
    {

        public string[] GenerateCorrectAnswer(string[] colors)
        {
            //string[] colors = { "red", "green", "blue", "yellow", "orange", "pink", "grey", "white" };
            string[] correctAnswer = new string[4];

            for (int i = 0; i < correctAnswer.Length; i++)
            {
                Random randInt = new Random();
                int index = randInt.Next(colors.Length);
                correctAnswer[i] = colors[index];
            }

            return correctAnswer;
        }

        public string[] GenerateUserInput()
        {
            string[] userInput = null;

            string colorChoices = Console.ReadLine();
            userInput = colorChoices.ToLower().Split(' ');
            
            return userInput;

        }

        public int GetCorrectPlaceCount(string[] answer, string[] input)
        {
            int correctPlaceCount = 0;

            for (int i = 0; i < 4; i++)
            {
                if (answer[i] == input[i])
                {
                    correctPlaceCount++;
                }

            }

            return correctPlaceCount;
        }

        public int GetIncorrectPlaceCount(string[] answer, string[] input)
        {
            int incorrectPlaceCount = 0;

            for (int i = 0; i < 4; i++)
            {
                if (answer[i] != input[i] && answer.Contains(input[i]))
                {
                    incorrectPlaceCount++;
                }

            }

            return incorrectPlaceCount;
        }

        public string GetIndicator(string[] answer, string[] input)
        {
            int correctPlaceCount = GetCorrectPlaceCount(answer, input);
            int incorrectPlaceCount = GetIncorrectPlaceCount(answer, input);
            
            string indicator = "";
            
            switch (correctPlaceCount)
            {
                case 0:
                    break;
                case 1:
                indicator += "+";
                    break;
                case 2:
                    indicator += "++";
                    break;
                case 3:
                    indicator += "+++";
                    break;

            }

            switch (incorrectPlaceCount)
            {
                case 0:
                    break;
                case 1:
                    indicator += "-";
                    break;
                case 2:
                    indicator += "--";
                    break;
                case 3:
                    indicator += "---";
                    break;
                case 4:
                    indicator += "----";
                    break; 
            }

                return indicator;
        } 
    }
}
