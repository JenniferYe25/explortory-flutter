import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/color_constants.dart';
import 'package:flutter_application_1/constants/router_type.dart';
import 'package:flutter_application_1/widgets/appbar_widget.dart';
import 'package:graphite/graphite.dart';

class RouterData {
  final String name;
  final String type;
  final int connectedAgents;
  final bool isWireless;
  final bool isOnline;
  final String imageUrl;

  RouterData({
    required this.name,
    required this.connectedAgents,
    required this.isWireless,
    required this.isOnline,
    this.type = '',
    this.imageUrl = 'assets/router.png',
  });
}

Map data = {
  // node on the map
  'Internet': RouterData(
      isOnline: false,
      connectedAgents: 1,
      isWireless: true,
      name: 'Internet',
      imageUrl: 'assets/internet.png'),

  'Negotation': RouterData(
      name: 'Negotiation Room',
      connectedAgents: 7,
      isWireless: true,
      isOnline: true,
      type: RouterType.Controller.name),
  'Living': RouterData(
    name: 'Living Room',
    connectedAgents: 0,
    isWireless: false,
    isOnline: true,
    type: RouterType.Agent.name,
  ),
  'Hall': RouterData(
    name: 'Hall',
    connectedAgents: 0,
    isWireless: true,
    isOnline: true,
    type: RouterType.Agent.name,
  ),
  'Garage': RouterData(
    name: 'Garage',
    connectedAgents: 0,
    isWireless: true,
    isOnline: true,
    type: RouterType.Agent.name,
  ),
  'Bedroom': RouterData(
    name: 'Bedroom',
    connectedAgents: 2,
    isWireless: true,
    isOnline: true,
    type: RouterType.Agent.name,
  ),
  'A1': RouterData(
    name: 'Agent 1',
    connectedAgents: 0,
    isWireless: true,
    isOnline: true,
    type: RouterType.Agent.name,
  ),
  'A2': RouterData(
    name: 'Agent 2',
    connectedAgents: 0,
    isWireless: true,
    isOnline: true,
    type: RouterType.Agent.name,
  ),
  'A3': RouterData(
    name: 'Agent 3',
    connectedAgents: 0,
    isWireless: true,
    isOnline: true,
    type: RouterType.Agent.name,
  ),
  'A4': RouterData(
    name: 'Agent 4',
    connectedAgents: 0,
    isWireless: true,
    isOnline: true,
    type: RouterType.Agent.name,
  ),
  'A5': RouterData(
    name: 'Agent 5',
    connectedAgents: 0,
    isWireless: true,
    isOnline: true,
    type: RouterType.Agent.name,
  ),
  'A6': RouterData(
    name: 'Agent 6',
    connectedAgents: 0,
    isWireless: true,
    isOnline: true,
    type: RouterType.Agent.name,
  )
};

List<NodeInput> network = [
  //connection
  NodeInput(id: 'Internet', next: [EdgeInput(outcome: 'Negotation')]),
  NodeInput(id: 'Negotation', next: [
    EdgeInput(outcome: 'Living'),
    EdgeInput(outcome: 'Bedroom'),
    EdgeInput(outcome: 'Hall'),
    EdgeInput(outcome: 'Garage'),
  ]),
  NodeInput(id: 'A1', next: []),
  NodeInput(id: 'Bedroom', next: [
    EdgeInput(outcome: 'A1'),
    EdgeInput(outcome: 'A2'),
    EdgeInput(outcome: 'A4')
  ]),
  NodeInput(id: 'Living', next: [EdgeInput(outcome: 'A3')]),
  NodeInput(
      id: 'Hall', next: [EdgeInput(outcome: 'A5'), EdgeInput(outcome: 'A6')]),
  NodeInput(id: 'Garage', next: []),
  NodeInput(id: 'A2', next: []),
  NodeInput(id: 'A3', next: []),
  NodeInput(id: 'A4', next: []),
  NodeInput(id: 'A5', next: []),
  NodeInput(id: 'A6', next: []),
];

class CurrentNodeInfo {
  final NodeInput node;
  final Rect rect;
  final RouterData data;

  CurrentNodeInfo({required this.node, required this.rect, required this.data});
}

class TestMapPage extends StatelessWidget {
  const TestMapPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppbarWidget(title: 'Network Map'),
      ),
      body: InteractiveViewer(
        constrained: false,
        child: Padding(
          padding: const EdgeInsets.only(left: 32.0, right: 32.0, bottom: 32.0),
          child: DirectGraph(
            list: network,
            pathBuilder: customEdgePathBuilder,
            paintBuilder: (edge) {
              var p = Paint()
                ..color = kGray
                ..style = PaintingStyle.stroke
                ..strokeCap = StrokeCap.round
                ..strokeWidth = 1;
              return p;
            },
            defaultCellSize: const Size(162.0, 162.0),
            cellPadding: const EdgeInsets.all(42),
            orientation: MatrixOrientation.Vertical,
            centered: true,
            nodeBuilder: (BuildContext context, NodeInput node) => FittedBox(
              fit: BoxFit.fitWidth,
              child: Container(
                margin: const EdgeInsets.all(24),
                child: Column(
                  children: [
                    Image.asset(
                      data[node.id]!.imageUrl,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            margin: const EdgeInsets.all(8),
                            width: 16,
                            height: 16,
                            decoration: const BoxDecoration(
                              color: Colors.green,
                              shape: BoxShape.circle,
                            )),
                        Text(
                          data[node.id]!.name,
                          style: const TextStyle(fontSize: 32),
                        ),
                      ],
                    ),
                    Text(
                      data[node.id]!.type,
                      style: const TextStyle(color: Colors.grey, fontSize: 24),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  // Scaffold(
  //     appBar: const PreferredSize(
  //       preferredSize: Size.fromHeight(50),
  //       child: AppbarWidget(title: 'Network Map'),
  //     ),
  //     body: InteractiveViewer(
  //         constrained: false,
  //         child: DirectGraph(
  //           list: nodeInputFromJson(list),
  //           defaultCellSize: const Size(100.0, 100.0), //node box size
  //           cellPadding: const EdgeInsets.all(20),
  //           centered: true, // centers around root
  //           orientation: MatrixOrientation.Vertical,
  //           tipLength: 10, //arrow tip length >
  //           tipAngle: 3.14 * 0.2, // arrow tip, how spread out
  //         )));
}

Path customEdgePathBuilder(NodeInput from, NodeInput to,
    List<List<double>> points, EdgeArrowType arrowType) {
  var path = Path();
  path.moveTo(points[0][0], points[0][1]);
  points.sublist(1).forEach((p) {
    path.lineTo(p[0], p[1]);
  });
  return path;
}
