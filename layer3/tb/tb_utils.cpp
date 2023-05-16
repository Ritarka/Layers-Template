#include <iostream>
#include <fstream>
#include <cmath>

#include "tb_utils.h"

template<const int W, typename T>
void Load_1D_Tensor(std::string filename, T tensor[W], bool param)
{
    auto float_tensor = new float [W];

    std::string path = param ? WT_FILEPATH : FM_FILEPATH;
    std::ifstream ifs(path+filename, std::ios::in | std::ios::binary);
    ifs.read((char*)(float_tensor), (W)*sizeof(float));
    ifs.close();

    for(int w = 0; w < W; w++)
        tensor[w] = (T) float_tensor[w];

    delete float_tensor;
}

template<const int H, const int W, typename T>
void Load_2D_Tensor(std::string filename, T tensor[H][W], bool param)
{   
    auto float_tensor = new float [H][W];
    
    std::string path = param ? WT_FILEPATH : FM_FILEPATH;
    std::ifstream ifs(path+filename, std::ios::in | std::ios::binary);
    ifs.read((char*)(*float_tensor), (H)*(W)*sizeof(float));
    ifs.close();
    
    for(int h = 0; h < H; h++)
        for(int w = 0; w < W; w++)
            tensor[h][w] = (T) float_tensor[h][w];
    
    delete float_tensor;
}

template<const int H, const int W, typename T>
void Load_2D_Tensor_New(std::string filename, T tensor[H][W])
{   
    auto float_tensor = new float [H][W];
    
    //std::string path = param ? WT_FILEPATH : FM_FILEPATH;
    std::ifstream ifs(filename, std::ios::in | std::ios::binary);
    ifs.read((char*)(*float_tensor), (H)*(W)*sizeof(float));
    ifs.close();
    
    for(int h = 0; h < H; h++)
        for(int w = 0; w < W; w++)
            tensor[h][w] = (T) float_tensor[h][w];
    
    delete float_tensor;
}
template<const int D, const int H, const int W, typename T>
void Load_3D_Tensor(std::string filename, T tensor[D][H][W], bool param)
{   
    auto float_tensor = new float [D][H][W];
    
    std::string path = param ? WT_FILEPATH : FM_FILEPATH;
    std::ifstream ifs(path+filename, std::ios::in | std::ios::binary);
    ifs.read((char*)(**float_tensor), (D)*(H)*(W)*sizeof(float));
    ifs.close();
    
    for(int d = 0; d < D; d++)
        for(int h = 0; h < H; h++)
            for(int w = 0; w < W; w++)
                tensor[d][h][w] = (T) float_tensor[d][h][w];
    
    delete float_tensor;
}

template<const int B, const int D, const int H, const int W, typename T>
void Load_4D_Tensor(std::string filename, T tensor[B][D][H][W], bool param)
{   
    auto float_tensor = new float [B][D][H][W];
    
    std::string path = param ? WT_FILEPATH : FM_FILEPATH;
    std::ifstream ifs(path+filename, std::ios::in | std::ios::binary);
    ifs.read((char*)(***float_tensor), (B)*(D)*(H)*(W)*sizeof(float));
    ifs.close();
    
    for(int b = 0; b < B; b++)
        for(int d = 0; d < D; d++)
            for(int h = 0; h < H; h++)
                for(int w = 0; w < W; w++)
                    tensor[b][d][h][w] = (T) float_tensor[b][d][h][w];
    
    delete float_tensor;
}

template<const int D, const int H, const int W, typename T>
long double Compare_3D_Tensors(float expected[D][H][W], T actual[D][H][W])
{
    long double mse = 0.0;

    for(int d = 0; d < D; d++)
    {
        for(int h = 0; h < H; h++)
        {
            for(int w = 0; w < W; w++)
            {
                mse += std::pow((expected[d][h][w] - (float) actual[d][h][w]), 2);

                #ifdef PRINT_DEBUG
                    if(expected[d][h][w] - (float) actual[d][h][w] > 0.01)
                        std::cout << "Output Mismatch: (" << d <<" , " << h <<" , " << w << " ) Expected: " << expected[d][h][w] <<" Got: "<< actual[d][h][w] << std::endl;
                #endif
            }
        }
    }

    mse = mse / (D * H * W);

    return mse;
}
