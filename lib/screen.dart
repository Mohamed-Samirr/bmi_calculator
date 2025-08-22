import 'package:flutter/material.dart';
enum SexType { MALE,FEMALE}

class bmiScreen extends StatefulWidget {
  const bmiScreen({super.key});

  @override
  State<bmiScreen> createState() => _bmiScreenState();
}

class _bmiScreenState extends State<bmiScreen> {
  double _height = 150;
  double weight = 0;
  double age = 0;
  SexType type = SexType.MALE;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD1D9E6),
      appBar: AppBar(
        backgroundColor: Color(0xFFD1D9E6),
        title: const Text(
          'BMI Calculator',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      type= SexType.MALE;
                      setState(() {
                        
                      });
                    },
                    child: Container(
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.male),
                          SizedBox(width: 10),
                          Text('Male', style: TextStyle(fontSize: 24)),
                        ],
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: type==SexType.MALE ? Colors.blue : Colors.white,
                        border: Border.all(color: Colors.blue, width: 2),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 23),
                Expanded(
                  child: InkWell(
                    onTap: (){
                      type= SexType.FEMALE;
                      setState(() {
                        
                      });
                    },
                    child: Container(
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.female),
                          SizedBox(width: 10),
                          Text('Female', style: TextStyle(fontSize: 24)),
                        ],
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: type==SexType.FEMALE ? Colors.blue : Colors.white,
                        border: Border.all(color: Colors.blue, width: 2),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 40),
            Row(
              children: [
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 16),
                      const Text(
                        "Height",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Expanded(
                        child: RotatedBox(
                          quarterTurns: -1, // نخلي الـ Slider عمودي
                          child: SliderTheme(
                            data: SliderTheme.of(context).copyWith(
                              activeTrackColor: Colors.blue,
                              inactiveTrackColor: Colors.grey.shade300,
                              trackHeight: 20,
                              thumbShape: const RoundSliderThumbShape(
                                enabledThumbRadius: 12,
                              ), // الدائرة الصغيرة
                            ),
                            child: Slider(
                              value: _height,
                              min: 112,
                              max: 190,
                              divisions: (190 - 112),
                              onChanged: (val) {
                                setState(() {
                                  _height = val;
                                });
                              },
                            ),
                          ),
                        ),
                      ),
                      Text(
                        _height.toStringAsFixed(0),
                        style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 16),
                    ],
                  ),

                  height: 466,
                  width: 170,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    border: Border.all(color: Colors.blue, width: 2),
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                          height: 220,
                          width: 175,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            border: Border.all(color: Colors.blue, width: 2),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                            children: [
                              Text(
                                "WEIGHT",
                                style: TextStyle(color: Colors.grey, fontSize: 18),
                              ),
                              SizedBox(height: 20),
                              Text(
                                weight.toInt().toString(),
                                style: TextStyle(color: Colors.blue, fontSize: 40),
                              
                              ),
                              SizedBox(height: 20),
                              Row(
                                children: [
                                  FloatingActionButton(
                                    onPressed: () {
                                      weight++;
                                      setState(() {});
                                    },
                                    shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(10)
                                  ) ,),
                                    backgroundColor: Colors.blue,
                                    child: Icon(Icons.add, color: Colors.white),
                                  ),
                                  Spacer(),
                                  FloatingActionButton(
                                    onPressed: () {
                                      if (weight > 0) weight--;
                                      setState(() {});
                                    },
                                    shape:const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(10)
                                  ) ,),
                                    backgroundColor: Colors.blue,
                                    child: Icon(Icons.remove, color: Colors.white),
                                  ),
                                ],
                              ),
                            ],
                                                    ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          height: 220,
                          width: 175,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            border: Border.all(color: Colors.blue, width: 2),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                            children: [
                              Text(
                                "age",
                                style: TextStyle(color: Colors.grey, fontSize: 18),
                              ),
                              SizedBox(height: 20),
                              Text(
                                age.toInt().toString(),
                                style: TextStyle(color: Colors.blue, fontSize: 40),
                              ),
                              SizedBox(height: 20),
                              Row(
                                children: [
                                  FloatingActionButton(
                                    onPressed: () {
                                      age++;
                                      setState(() {});
                                    },
                                    shape:const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(10)
                                    ) ,),
                                    backgroundColor: Colors.blue,
                                    child: Icon(Icons.add, color: Colors.white),
                                  ),
                                  Spacer(),
                                  FloatingActionButton(
                                    onPressed: () {
                                      if (age > 0) age--;
                                      setState(() {});
                                    },
                                    shape:const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(10)
                                    ) ,),
                                    backgroundColor: Colors.blue,
                                    child: Icon(Icons.remove, color: Colors.white),
                                  ),
                                ],
                              ),
                            ],
                                                  ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 56),
            ElevatedButton(
              onPressed: () {
               
                var bmi = weight / (_height * _height) * 10000;
                var result = "";
                switch (bmi) {
                  case < 18.5:
                    result = "Underweight";
                  case >= 18.5 && <= 24.9:
                    result = "Normal weight";
                  case >= 25 && <= 29.9:
                    result = "Overweight";

                  default:
                    result = "Obese";
                }

                showAlertDialog(context, title: result);
                print(bmi.toString());
              
              }, 
             
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                minimumSize: Size(379, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text(
                "Let's go",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
 void showAlertDialog(BuildContext context, {required String title}) {
    AlertDialog alert = AlertDialog(title: Text(title));
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
