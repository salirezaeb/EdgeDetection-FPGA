#include "RGB2GS.h"

int RGB2GS(int R,int G,int B){

	return floor(0.299*R + 0.587*G + 0.144*B);

}
