package servlets.until;

public class ConvertFilterHtml {
    private StringBuilder stBuilder;

    public ConvertFilterHtml() {
        StringBuilder temp = new StringBuilder();
        temp.append("<tr><br>")
                .append("<th><p>Компания</p></th><br>")
                .append("<th><p></p>Тикер</th><br>")
                .append("<th><p>Рыночная капитализация</p></th><br>")
                .append("<th><p>P/E</p></th><br>")
                .append("<th><p>P/S</p></th><br>")
                .append("<th><p>P/BV</p></th><br>")
                .append("<th><p>EV/EBITDA</p></th><br>")
                .append("<th><p>EV/S</p></th><br>")
                .append("<th><p>DEBT/EBITDA</p></th><br>")
                .append("<th><p>ROE</p></th><br></tr><br>");
        this.stBuilder = temp;
    }

    private  StringBuilder getStBuilder() {
        return stBuilder;
    }

    public StringBuilder stringBuilder() {
        StringBuilder sb = getStBuilder();
        return sb;
    }
}
