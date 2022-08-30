-------------------------------------
-- Computation for Proposition 3.2 --
-------------------------------------
needsPackage "VersalDeformations";
S = QQ[x,y,z,w];
F0 = matrix {{x^2,x*y,x*z^2,y^4}};
(F,R,G,C) = localHilbertScheme(F0,Verbose=>2);
T = ring first G;
sum G
-------------------------------
-- Computation for Lemma 4.3 --
-------------------------------
-- A = O_V(-3)
-- B = I_L(-1) L is not contained in V
-- C = I_L(-1) L is contained in V
X = Proj(QQ[x,y,z,w]);
A = (OO_X(0) / sheaf module ideal(x))**OO_X(-3);
B = (sheaf module ideal (y,z))**OO_X(-1);
C = (sheaf module ideal (x,y))**OO_X(-1);
Ext^1(B,A)
Ext^1(C,A)
Ext^1(A,B)
Ext^1(A,C)
Ext^1(A,A)
Ext^1(B,B)
Ext^1(C,C)
-------------------------------
-- A = O_V(-4)
-- B = I_Z(-1) Two separate points
--             outside V
-- C = I_Z(-1) Double point outside V
-- D = I_Z(-1) One point inside,
--             one point outside V
-- E = I_Z(-1) Two separate points
--             inside V
-- F = I_Z(-1) Double point scheme
--             theoretically in V
-- G = I_Z(-1) Double point set but
--             not scheme theoretically in V
X = Proj(QQ[x,y,z,w]);
A = (OO_X(0) / sheaf module ideal(x))**OO_X(-4);
B = (sheaf module ideal (y*(x-y),z,w))**OO_X(-1);
C = (sheaf module ideal (y^2,z,w))**OO_X(-1);
D = (sheaf module ideal (x*y,z,w))**OO_X(-1);
E = (sheaf module ideal (x,y*z,w))**OO_X(-1);
F = (sheaf module ideal (x,y,z^2))**OO_X(-1);
G = (sheaf module ideal (x^2,y,z))**OO_X(-1);
Ext^1(A,B)
Ext^1(A,C)
Ext^1(A,D)
Ext^1(A,E)
Ext^1(A,F)
Ext^1(A,G)
Ext^1(B,A)
Ext^1(C,A)
Ext^1(D,A)
Ext^1(E,A)
Ext^1(F,A)
Ext^1(G,A)
Ext^1(A,A)
Ext^1(B,B)
Ext^1(C,C)
-------------------------------
-- A = I_{Q/V}(-4)
-- B = I_P(-1) P \notin V
-- C = I_P(-1) P \in V, P \neq Q
-- D = I_P(-1) P = Q
X = Proj(QQ[x,y,z,w]);
A = (sheaf module ideal (x,y,z)
    / sheaf module ideal(x))**OO_X(-4);
B = (sheaf module ideal (y,z,w))**OO_X(-1);
C = (sheaf module ideal (x,y,w))**OO_X(-1);
D = (sheaf module ideal (x,y,z))**OO_X(-1);
Ext^1(A,B)
Ext^1(A,C)
Ext^1(A,D)
Ext^1(B,A)
Ext^1(C,A)
Ext^1(D,A)
Ext^1(A,A)
Ext^1(B,B)
Ext^1(D,D)
-------------------------------
-- A = O(-1)
-- B = I_{Z'/V}(-4) Two separate points
-- C = I_{Z'/V}(-4) Double point
X = Proj(QQ[x,y,z,w]);
A = OO_X(-1);
B = (sheaf module ideal (x,y,z^2)
    / sheaf module ideal(x))**OO_X(-4);
C = (sheaf module ideal (x,y,w*z)
    / sheaf module ideal(x))**OO_X(-4);
Ext^1(B,A)
Ext^1(C,A)
Ext^1(A,B)
Ext^1(A,C)
Ext^1(B,B)
Ext^1(C,C)
-------------------------------
-- A = I_Z(-1), Z \subset V double point at P
-- B = O_V(-4)
-- C = I_{P/V}(-4)
-- D = I_P(-1)
X = Proj(QQ[x,y,z,w]);
A = (sheaf module ideal(x,y,z^2))**OO_X(-1);
B = (OO_X(0) / sheaf module ideal(x))**OO_X(-4);
C = (sheaf module ideal(x,y,z)
    / sheaf module ideal(x))**OO_X(-4);
D = (sheaf module ideal(x,y,z))**OO_X(-1);
Ext^1(A,C)
Ext^1(B,C)
Ext^1(A,D)
Ext^1(B,D) 
