import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/appbar_widget.dart';
import 'package:graphite/graphite.dart';

class RouterData {
  final String name;
  final int connectedAgents;
  final bool isWireless;
  final bool isOnline;
  final String imageUrl;

  RouterData(
      {required this.name,
      required this.connectedAgents,
      required this.isWireless,
      required this.isOnline,
      this.imageUrl = 'assets/router.png'});
}

Map<String, RouterData> data = {
  'Internet': RouterData(
      isOnline: false,
      name: 'Internet',
      connectedAgents: 1,
      isWireless: true,
      imageUrl: 'assets/internet.png'),
  'Negotation': RouterData(
      name: 'Negotiation Room',
      connectedAgents: 7,
      isWireless: true,
      isOnline: true),
  'Living': RouterData(
      name: 'Living Room',
      connectedAgents: 0,
      isWireless: false,
      isOnline: true),
  'Hall': RouterData(
    name: 'Hall',
    connectedAgents: 0,
    isWireless: true,
    isOnline: true,
  ),
  'Garage': RouterData(
    name: 'Garage',
    connectedAgents: 0,
    isWireless: true,
    isOnline: true,
  ),
  'Bedroom': RouterData(
    name: 'Bedroom',
    connectedAgents: 2,
    isWireless: true,
    isOnline: true,
  ),
  'A1': RouterData(
    name: 'Agent 1',
    connectedAgents: 0,
    isWireless: true,
    isOnline: true,
  ),
  'A2': RouterData(
    name: 'Agent 2',
    connectedAgents: 0,
    isWireless: true,
    isOnline: true,
  ),
  'A3': RouterData(
    name: 'Agent 3',
    connectedAgents: 0,
    isWireless: true,
    isOnline: true,
  )
};

List<NodeInput> network = [
  NodeInput(id: 'Internet', next: [EdgeInput(outcome: 'Negotation')]),
  NodeInput(id: 'Negotation', next: [
    EdgeInput(outcome: 'Living'),
    EdgeInput(outcome: 'Hall'),
    EdgeInput(outcome: 'Garage'),
    EdgeInput(outcome: 'Bedroom'),
  ]),
  NodeInput(id: 'Living', next: []),
  NodeInput(id: 'Hall', next: []),
  NodeInput(id: 'Garage', next: []),
  NodeInput(id: 'Bedroom', next: [
    EdgeInput(outcome: 'A1'),
    EdgeInput(outcome: 'A2'),
    EdgeInput(outcome: 'A3')
  ]),
  NodeInput(id: 'A1', next: []),
  NodeInput(id: 'A2', next: []),
  NodeInput(id: 'A3', next: [])
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
        child: DirectGraph(
          list: network,
          defaultCellSize: const Size(100.0, 100.0),
          cellPadding: const EdgeInsets.all(24),
          contactEdgesDistance: 5.0,
          orientation: MatrixOrientation.Vertical,
          clipBehavior: Clip.none,
          centered: true,
          minScale: .1,
          maxScale: 3,
          nodeBuilder: (BuildContext context, NodeInput node) => FittedBox(
            fit: BoxFit.fitWidth,
            child: Column(
              children: [
                Image.asset(
                  data[node.id]!.imageUrl,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        width: 24,
                        height: 24,
                        decoration: const BoxDecoration(
                          color: Colors.green,
                          shape: BoxShape.circle,
                        )),
                    Text(
                      data[node.id]!.name,
                      style: const TextStyle(fontSize: 28),
                    ),
                  ],
                ),
                const Text(
                  'Subtext',
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                )
              ],
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
