// Name of Experiment: Plaquette_check v1

OPENQASM 2.0;
include "qelib1.inc";

// plaquette check
OPENQASM 2.0;

qreg q[5];
creg c[5];

x q[1];
x q[4];
barrier q;

cx q[2], q[1];
cx q[3], q[2];
barrier q;
measure q[0]->c[0];
measure q[1]->c[1];
measure q[2]->c[2];
measure q[3]->c[3];
measure q[4]->c[4];
