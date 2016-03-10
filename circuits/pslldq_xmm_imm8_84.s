  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                    
.target:                               #        0     0      OPC=<label>               
  vpbroadcastd %xmm1, %ymm14           #  1     0     5      OPC=vpbroadcastd_ymm_xmm  
  vminpd %ymm14, %ymm14, %ymm13        #  2     0x5   5      OPC=vminpd_ymm_ymm_ymm    
  vmaxps %xmm14, %xmm14, %xmm12        #  3     0xa   5      OPC=vmaxps_xmm_xmm_xmm    
  callq .move_64_128_xmm12_xmm13_xmm1  #  4     0xf   5      OPC=callq_label           
  xorpd %xmm12, %xmm1                  #  5     0x14  5      OPC=xorpd_xmm_xmm         
  retq                                 #  6     0x19  1      OPC=retq                  
                                                                                       
.size target, .-target
