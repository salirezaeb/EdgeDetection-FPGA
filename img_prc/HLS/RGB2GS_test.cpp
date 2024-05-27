#include "RGB2GS.h"
#include <fstream>
#include <iostream>
using namespace std;

int main(){

	std::ifstream input_file_R ("r_in.txt",std::ifstream::in);
	std::ifstream input_file_G ("g_in.txt",std::ifstream::in);
	std::ifstream input_file_B ("b_in.txt",std::ifstream::in);

	std::ofstream output_file ("out.txt",std::ifstream::out);

	if(input_file_R.is_open()){
		cout << "OPEN" << endl;
	}

	int R,G,B;

	int a[8],n,k;

	for (int i = 0; i < Row; ++i) {
		for (int j = 0; j < Col; ++j) {
			input_file_R >> R;
			std::cout << R << std::endl;
			input_file_G >> G;
			input_file_B >> B;

			n = RGB2GS(R,G,B);
			a[0] = 0;
			a[1] = 0;
			a[2] = 0;
			a[3] = 0;
			a[4] = 0;
			a[5] = 0;
			a[6] = 0;
			a[7] = 0;
			for(k=0;n>0;k++){
				a[k]=n%2;
				n=n/2;
			}
			for(k=7;k>=0;k--){
				output_file << a[k];
			}
			output_file << endl;
		}
	}
	input_file_R.close();
	input_file_G.close();
	input_file_B.close();
	output_file.close();
}
