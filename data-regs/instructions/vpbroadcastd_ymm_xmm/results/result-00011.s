  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                    
.target:                                    #        0     0      OPC=<label>               
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label           
  vmovd %eax, %xmm4                         #  2     0x5   4      OPC=vmovd_xmm_r32         
  vpbroadcastd %xmm4, %xmm9                 #  3     0x9   5      OPC=vpbroadcastd_xmm_xmm  
  vmaxps %xmm9, %xmm9, %xmm8                #  4     0xe   5      OPC=vmaxps_xmm_xmm_xmm    
  callq .move_128_256_xmm8_xmm9_ymm1        #  5     0x13  5      OPC=callq_label           
  retq                                      #  6     0x18  1      OPC=retq                  
                                                                                            
.size target, .-target
