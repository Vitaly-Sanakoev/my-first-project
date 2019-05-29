public class Rectangle {

    private Integer sideA;
    private Integer sideB;
    private String failString = ' Please enter correct values for both sides A and B';

    public Rectangle() {
        this.sideA = 0;
        this.sideB = 0;
    }

    public Rectangle(Integer i, Integer j) {
        this.sideA = i;
        this.sideB = j;
    }

    public static void methodB() {
        System.debug('New Git Testing');
    }

    public static void methodA() {
        System.debug('Git Testing');
    }

    private Boolean isDataCorrect() {
        if ((this.sideA != 0 && this.sideB != 0) && (this.sideA != null && this.sideB != null)) {
            return true;
        } else return false;
    }

    public void getNewValues(Integer a, Integer b) {
        this.sideA = a;
        this.sideB = b;
    }

    public String findPerimeter() {
        Integer perimeter;
        String perimeterString;
        if (isDataCorrect()) {
            perimeter = (this.sideA + this.sideB) * 2;
            perimeterString = ' Perimeter is : ' + String.valueOf(perimeter) + ' sm';
            return perimeterString;
        } else return failString;
    }

    public String findArea() {
        Integer area;
        String areaString;
        if (isDataCorrect()) {
            area = this.sideA * this.sideB;
            areaString = ' Area is : ' + String.valueOf(area) + ' sm^2';
            return areaString;
        } else return failString;
    }
}