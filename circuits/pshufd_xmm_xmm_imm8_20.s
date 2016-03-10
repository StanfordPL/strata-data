  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                    
.target:                                          #        0     0      OPC=<label>               
  callq .move_128_032_xmm2_eax_edx_r8d_r9d        #  1     0     5      OPC=callq_label           
  movd %eax, %xmm8                                #  2     0x5   5      OPC=movd_xmm_r32          
  movd %eax, %xmm11                               #  3     0xa   5      OPC=movd_xmm_r32          
  vmovd %edx, %xmm10                              #  4     0xf   4      OPC=vmovd_xmm_r32         
  vpbroadcastd %xmm10, %xmm9                      #  5     0x13  5      OPC=vpbroadcastd_xmm_xmm  
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  6     0x18  5      OPC=callq_label           
  retq                                            #  7     0x1d  1      OPC=retq                  
                                                                                                  
.size target, .-target
