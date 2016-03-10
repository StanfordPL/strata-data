  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode                    
.target:                              #        0     0      OPC=<label>               
  vbroadcastss %xmm2, %xmm1           #  1     0     5      OPC=vbroadcastss_xmm_xmm  
  callq .move_128_64_xmm1_xmm8_xmm9   #  2     0x5   5      OPC=callq_label           
  vmovddup %xmm9, %xmm9               #  3     0xa   5      OPC=vmovddup_xmm_xmm      
  vminps %xmm9, %xmm1, %xmm8          #  4     0xf   5      OPC=vminps_xmm_xmm_xmm    
  callq .move_128_256_xmm8_xmm9_ymm1  #  5     0x14  5      OPC=callq_label           
  retq                                #  6     0x19  1      OPC=retq                  
                                                                                      
.size target, .-target
