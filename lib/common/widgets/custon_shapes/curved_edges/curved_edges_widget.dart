import 'package:flutter/material.dart';

import 'curved_edges.dart';

class SoobuCurvedEdgeWidget extends StatelessWidget {
  const SoobuCurvedEdgeWidget({
    super.key, this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: SoobuCustomCurvedEdges(),
      child: child,
    );
  }
}