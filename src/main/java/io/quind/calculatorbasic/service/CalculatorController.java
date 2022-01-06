package io.quind.calculatorbasic.service;
import io.quind.calculatorbasic.domain.Calculator;
import io.quind.calculatorbasic.model.Resultado;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.CrossOrigin;

@CrossOrigin("*")
@RestController

public class CalculatorController {
    @RequestMapping("/add")
    public static double getUrladdition(
            @RequestParam(value="number1", defaultValue = "0")double number1,
            @RequestParam(value="number2", defaultValue = "0")double number2){
            Calculator instanceCalculator = new Calculator();
            //Modelo suma = new Resultado ();
        //suma.Result(String.valueOf(number1+number2));
            //return suma

            return instanceCalculator.addTwoNumbers(number1, number2);
    }
    @RequestMapping("/sub")
    public static double getUrlsubtraction(
            @RequestParam(value="number1", defaultValue="0")double number1,
            @RequestParam(value="number2", defaultValue="0")double number2){
            Calculator instanceCalculator = new Calculator();
            return instanceCalculator.subtractTwoNumbers(number1, number2);
    }

    @RequestMapping("/mult")
    public static double getUrlmultiplication(
            @RequestParam(value="number1", defaultValue="0")double number1,
            @RequestParam(value="number2", defaultValue="0")double number2){
        Calculator instanceCalculator = new Calculator();
        return instanceCalculator.multiplicationTwoNumbers(number1, number2);
    }




    @RequestMapping("/div")
    public Resultado getUrldivision(
            @RequestParam(name="number1", defaultValue = "0") double number1,
            @RequestParam(name="number2", defaultValue = "0") double number2) {
        Resultado div = new Resultado();

        if (number2==0){
            div.setResult("No se puede dividir por cero.");
        }else {
            div.setResult(String.valueOf(number1/number2));
        }
        return div;

    }
}

   /* @RequestMapping("/div")
    public static String getUrldivision(
            @RequestParam(value="number1", defaultValue="0")double number1,
            @RequestParam(value="number2", defaultValue="0")double number2){
        if (number2 == 0.0) {
            Resultado division  = new Resultado();
            division.setResult("No se puede dividir por cero");
            return division;
        }
        else{
            Calculator instanceCalculator = new Calculator();
            return instanceCalculator.divisionTwoNumbers(number1,number2);
        }
    }

}
*/

