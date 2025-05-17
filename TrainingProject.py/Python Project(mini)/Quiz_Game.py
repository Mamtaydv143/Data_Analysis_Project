def Quiz_Game():
     print("**********************Quiz_Game*************************")

questions=("What is the output of the 2**4 in python?:",
            "Which Datatype is immutable in python?:",
            "How can we acces the dictionary?:")
options=(("A. 5","B. 23","C.16","D.8"),
 ("A. String","B.Set","C.List","D.Dictionary"),
 ("A.key:value","B.key>=value","C.key=value","D.key:=value"))
answers=("C","A","A")


name=(input("Enter your name here:"))
print('Hello', name, "Welcome to the quiz world:")
score=0
guesses=[]
question_num=0


for question in questions:
    print("----------------------")
    print(question)
    for option in options[question_num]:
        print(option)
    Ask=(input("Do you want to skip this question?,Yes/No:"))
    if Ask=="yes" or Ask=="Yes":
            continue
    guess = input("Enter (A, B, C, D): ").upper()
    guesses.append(guess)
    if guess == answers[question_num]:
        score += 1
        print("CORRECT!")
    else:
        print("INCORRECT!")
        print(f"{answers[question_num]} is the correct answer")
    question_num += 1

print("----------------------")
print("       RESULTS        ")
print("----------------------")

print("answers: ", end="")
for answer in answers:
    print(answer, end=" ")
print()

print("guesses: ", end="")
for guess in guesses:
    print(guess, end=" ")
print()

score = int( score / len(questions)*100 )
print(f"Your final score is:{score}%")
"""if score == 100 :
   print("Excellent you got all correct answer!",score)
else if score==60:
    print("Good job!,Keep practicing")
else:
    print("Try again and improved!")"""