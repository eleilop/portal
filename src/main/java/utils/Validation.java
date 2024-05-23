package utils;

public abstract class Validation {
    public static boolean validateEmail(String email) {
        return email.matches("^.+@[a-zA-Z]+\\.[a-zA-Z]{2,4}$");
    }

    public static boolean validName(String name) {
        String regex = "^[a-zA-Z ]+$";
        return name.matches(regex);
    }

    public static boolean emailValidator(String email) {
        String regex = ".+@[a-zA-Z]+\\.[a-zA-z]{2,4}";
        return email.matches(regex);
    }

    public static boolean passwordValidator(String password) {
        boolean valid = false;
        boolean containsUpper = false;
        boolean containsLower = false;
        boolean containsNumber = false;
        int i = 0;
        while(i < password.toCharArray().length && !valid) {
            if(Character.isLowerCase(password.charAt(i)))
                containsLower = true;
            if(Character.isDigit(password.charAt(i)))
                containsNumber = true;
            if(Character.isUpperCase(password.charAt(i)))
                containsUpper = true;
            valid = containsNumber && containsUpper && containsLower;
            i++;
        }
        return valid;
    }

    public static boolean dniValidator(String dni) {
        String dniRegex = "^[0-9]{8}[A-Z]$";
        boolean res = false;
        if (dni.matches(dniRegex)) {
            char[] digitControl = {'T','R','W','A','G','M','Y','F','P','D','X','B','N','J','Z','S','Q','V','H','L','C','K','E'};
            char[] dniArr = dni.toUpperCase().toCharArray();
            StringBuilder dniNumberString = new StringBuilder();
            int dniNumber;
            for (char c : dniArr) {
                if (Character.isDigit(c)) {
                    dniNumberString.append(c);
                }
            }
            dniNumber = Integer.parseInt(String.valueOf(dniNumberString));
            if (dniArr[dniArr.length -1] == digitControl[dniNumber % 23]) {
                res = true;
            }
        }
        return res;
    }

    public static boolean nieValidator(String nie) {
        String nieRegex = "^[XYZ][0-9]{7}[A-Z]$";
        boolean res = false;
        if (nie.matches(nieRegex)) {
            char[] digitControl = {'T','R','W','A','G','M','Y','F','P','D','X','B','N','J','Z','S','Q','V','H','L','C','K','E'};
            char[] nieArr = nie.toUpperCase().toCharArray();
            StringBuilder nieNumberStr = new StringBuilder();
            int nieNumber = 0;
            switch (nieArr[0]) {
                case 'X' -> nieNumberStr.append('0');
                case 'Y' -> nieNumberStr.append('1');
                case 'Z' -> nieNumberStr.append('2');
            }
            for(int i = 1; i < nieArr.length; i++) {
                if (Character.isDigit(nieArr[i])) {
                    nieNumberStr.append(nieArr[i]);
                }
            }
            nieNumber = Integer.parseInt(String.valueOf(nieNumberStr));
            if (nieArr[nieArr.length -1] == digitControl[nieNumber % 23]) {
                res = true;
            }
        }
        return res;
    }
}