/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package metodos;

/**
 *
 * @author luisa
 */
public class Ecuacion {
    
    private double valA;
    private double valB;
    private double y;
    
    public Ecuacion(double A, double B)
    {
        valA = A;
        valB = B;
    }
    
    //METODO PARA ENCONTRAR EL VALOR DE Y
    public String valorY()
    {
        String valorY = "";
        
        if(valB>0)
        {
            y = ((-1)*valA)/valB;
            valorY = String.valueOf(y);
        }else
        {
            valorY = "El valor de B, es menor a cero";
        }
        
        return valorY;
    }
    
    //ENCONTRAR EL VALOR DE Y EN UN VALOR ESPECIFICO DE X
    public double rango(int x)
    {
        double vy = valA + (valB * x);
        
        return vy;
    }
    
}
