package model;

public enum Years {
    One(2012),
    Two(2013),
    Three(2014),
    Four(2015),
    Five(2016),
    Six(2017),
    Seven(2018);

    private final int index;

    Years(int index) {
        this.index = index;
    }

    public int index() {
        return this.index;
    }
}
