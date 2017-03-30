import java.io.BufferedReader;
import java.io.FileReader;
import java.util.*;
import java.util.Arrays;

public class lexical {    
    public static void main(String[] args) {
        String []matop={"+","-","*","/","=","++","--","%"};
        String []keyword={ "auto","break","case","char","const","continue","default","do","double","else","enum","extern","float","for",
            "goto","if","int","long","register","return","short","signed","sizeof","static","struct","switch","typedef","union","unsigned","void","volatile","while"};
        String []logical={"<",">","&&","||","==",">=","<=","!"};
        
        ArrayList<String> Printmatop=new ArrayList<>();
        ArrayList<String> Printkey=new ArrayList<>();
        ArrayList<String> Printlogic=new ArrayList<>();
        ArrayList<String> Printidentifier=new ArrayList<>();
        ArrayList<String> Printnum=new ArrayList<>();
        ArrayList<String> Printother=new ArrayList<>();
        int count=0;
        ArrayList<String> a=new ArrayList<>();
        try{
            BufferedReader file=new BufferedReader(new FileReader("input.txt")); 
            Scanner sc=new Scanner(file);
            String line = null;
            while ((line = file.readLine())!= null)
            {                
                StringTokenizer str = new StringTokenizer(line, ", ;");
                while (str.hasMoreTokens())
                {
                    
                    a.add(count,str.nextToken());       
                    //System.out.println(a.get(count));
                    count++;
                }
            }
        
        //matoperators
         
        for(count=0;count<a.size();count++){
            for(int j=0;j<matop.length;j++){
                if(a.get(count).equals(matop[j]))
           //if(a.get(count).equals("+") || a.get(count).equals("-") || a.get(count).equals("*") || a.get(count).equals("/") || a.get(count).equals("++") || a.get(count).equals("--") || a.get(count).equals("="))
                {
                    int c=0;
                    Printmatop.add(c,matop[j]);
                    //System.out.print (Printmatop.get(c));
                    //c++;
                }
            }
        }
        String[] stockmatop = new String[Printmatop.size()]; //making an array and storing values
        stockmatop = Printmatop.toArray(stockmatop);
        HashSet<String> uniqueMat =new HashSet<>(Arrays.asList(stockmatop)); // using array instead of arrayList
        //System.out.println(uniqueMat+"HAHA");
        String finalmatop[]=new String[uniqueMat.size()]; //unique size array
        finalmatop=uniqueMat.toArray(finalmatop);
        System.out.print("Arithmatic operators: ");
        for(int i=0;i<finalmatop.length;i++)
           {System.out.print (finalmatop[i]+", ");}
         
           //keywords
           
        for(count=0;count<a.size();count++){
            for(int j=0;j<keyword.length;j++){
                if(a.get(count).equals(keyword[j]))
                {
                    int c=0;
                    Printkey.add(c,keyword[j]);
                   // System.out.print (Printkey.get(c)+" ");
                    //c++;
                }
            }
        }

        String[] stockkey = new String[Printkey.size()];
        stockkey = Printkey.toArray(stockkey);
        HashSet<String> uniqueKey =new HashSet<>(Arrays.asList(stockkey));
        
        String finalkey[]=new String[uniqueKey.size()];
        finalkey=uniqueKey.toArray(finalkey);
        System.out.println();
        System.out.print("Keywords: ");
           for(int i=0;i<finalkey.length;i++)
           {System.out.print (finalkey[i]+", ");}
        
//logical
           
           for(count=0;count<a.size();count++){
            for(int j=0;j<logical.length;j++){
                if(a.get(count).equals(logical[j]))
                {
                    int c=0;                    
                    Printlogic.add(c,logical[j]);
                   // System.out.print (Printkey.get(c)+" ");
                    //c++;
                }        
            }
        }

        String[] stocklogic = new String[Printlogic.size()];
        stocklogic = Printlogic.toArray(stocklogic);
        HashSet<String> uniqueLogic =new HashSet<>(Arrays.asList(stocklogic));
        
        String finalLogic[]=new String[uniqueLogic.size()];
        finalLogic=uniqueLogic.toArray(finalLogic);
        System.out.println();
        System.out.print("Logical operators: ");
           for(int i=0;i<finalLogic.length;i++)
           {System.out.print (finalLogic[i]+", ");}
           
           //idertifier
           
        for(count=0;count<a.size();count++){   
        String str=a.get(count);
        char cc= str.charAt(0);
        int cint = (int) cc;
        if (cint>=65 && cint<=90 || cint>=97 && cint<=122 || cint==36|| cint==95)
        {
            int p=0;
            Printidentifier.add(p,str);
        //System.out.println(cint);
        }
        else if(cint>=48 && cint <=57){
             int pp=0;
             //if(str.contains())
            Printnum.add(pp,str);
        }
        else if(cint==40 || cint==41 || cint==44 || cint==58|| cint==59 || cint==91|| cint==93|| cint==123|| cint==125)
        {
            int ppp=0;
            Printother.add(ppp,str);
        }
           }

            String[] stockidentifier = new String[Printidentifier.size()];
        stockidentifier = Printidentifier.toArray(stockidentifier);
        HashSet<String> uniqueiden =new HashSet<>(Arrays.asList(stockidentifier));
        //int cc=0;
        String iden[]=new String[uniqueiden.size()];
        iden=uniqueiden.toArray(iden);
        //String finaliden[]=new String[uniqueiden.size()];
        for (int i=0;i<iden.length;i++){
            for(int j=0;j<finalkey.length;j++)
            {
                //System.out.println(finalkey[0]);
                if(iden[i].equals(finalkey[j]))
                {
                    iden[i]=" ";
                }                      
            }
        }
        System.out.println();
        System.out.print("Identifiers: ");
           for(int i=0;i<iden.length;i++)
           {
               if(!iden[i].equals(" "))
           {System.out.print (iden[i]+", ");}    
           }
           
           //numeric
           String[] stocknum = new String[Printnum.size()];
        stocknum = Printnum.toArray(stocknum);
        HashSet<String> uniqueNum =new HashSet<>(Arrays.asList(stocknum));
        
        String finalnum[]=new String[uniqueNum.size()];
        finalnum=uniqueNum.toArray(finalnum);
        System.out.println();
        System.out.print("Numeric values: ");
           for(int i=0;i<finalnum.length;i++)
           {System.out.print (finalnum[i]+", ");}
        
                     
        // others
           
               String[] stockother = new String[Printother.size()];
        stockother = Printother.toArray(stockother);
        HashSet<String> uniqueOther =new HashSet<>(Arrays.asList(stockother));
        
        String finalother[]=new String[uniqueOther.size()];
        finalother=uniqueOther.toArray(finalother);
        System.out.println();
             
           
           System.out.print("Others: ; , " );
           for(int i=0;i<finalother.length;i++)
           {
               System.out.print(finalother[i]+" ");
           }
        }
        catch(Exception exp)
        {System.out.println(exp);}                   
    }
    }   
