// Name of Experiment: Simple QASM v1

OPENQASM 2.0;
include "qelib1.inc";


// A simple 8 qubit example entangling two 4 qubit registers
OPENQASM 2.0;

qreg a[4];
creg c[4];
h a;
cx a[2], a[1];
barrier a;
measure a[0]->c[0];
measure a[1]->c[1];
measure a[2]->c[2];
measure a[3]->c[3];