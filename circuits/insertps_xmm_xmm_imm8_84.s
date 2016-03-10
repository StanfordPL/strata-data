  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                    
.target:                                          #        0     0      OPC=<label>               
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label           
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7    #  2     0x5   5      OPC=callq_label           
  vmovups %xmm7, %xmm11                           #  3     0xa   4      OPC=vmovups_xmm_xmm       
  punpckhdq %xmm1, %xmm10                         #  4     0xe   5      OPC=punpckhdq_xmm_xmm     
  vbroadcastss %xmm4, %ymm8                       #  5     0x13  5      OPC=vbroadcastss_ymm_xmm  
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  6     0x18  5      OPC=callq_label           
  retq                                            #  7     0x1d  1      OPC=retq                  
                                                                                                  
.size target, .-target
