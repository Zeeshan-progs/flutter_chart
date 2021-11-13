class CircularChartModel {
  String countryName, tanks, submarines, flag;
  double aircrafts, budget;
  CircularChartModel({
    required this.flag,
    required this.aircrafts,
    required this.budget,
    required this.countryName,
    required this.submarines,
    required this.tanks,
  });
}

List<CircularChartModel> data = [
  CircularChartModel(
    flag:
        'https://www.gannett-cdn.com/media/2019/06/30/USATODAY/usatsports/gettyimages-153718849.jpg?crop=1365,768,x0,y0&width=1365&height=682&format=pjpg&auto=webp',
    aircrafts: 13892,
    budget: 601,
    countryName: 'United States',
    submarines: '72',
    tanks: '8848',
  ),
  CircularChartModel(
    flag:
        'https://www.jurist.org/news/wp-content/uploads/sites/4/2019/01/russia_flag_1548184970.jpg',
    aircrafts: 3429,
    budget: 84.5,
    countryName: 'Russia',
    submarines: '55',
    tanks: '15398',
  ),
  CircularChartModel(
    flag: 'https://www.edarabia.com/wp-content/uploads/2019/10/china-flag.jpg',
    aircrafts: 2860,
    budget: 216,
    countryName: 'China',
    submarines: '67',
    tanks: '9150',
  ),
  CircularChartModel(
    flag: 'https://www.edarabia.com/wp-content/uploads/2019/10/japan-flag.jpg',
    aircrafts: 1613,
    budget: 41.6,
    countryName: 'Japan',
    submarines: '16',
    tanks: '678',
  ),
  CircularChartModel(
      aircrafts: 1905,
      budget: 50,
      countryName: 'INDIA',
      submarines: '15',
      tanks: '6464',
      flag:
          'https://s.yimg.com/ny/api/res/1.2/E6cOcjVtsXBT8YEq6eWXjw--/YXBwaWQ9aGlnaGxhbmRlcjtoPTY2Ng--/https://s.yimg.com/os/creatr-uploaded-images/2021-08/46b45290-fc2e-11eb-bbfb-ec632f14765d'),
  CircularChartModel(
      aircrafts: 1264,
      budget: 62.3,
      countryName: 'France',
      submarines: '10',
      tanks: '423',
      flag:
          'https://media.istockphoto.com/photos/flag-of-france-picture-id172301500?k=20&m=172301500&s=612x612&w=0&h=4RQWgaixj-gal1cb2YDlU66lb1wmwv75TYcGK0SLLjI='),
];
