  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                      
.target:                               #        0     0      OPC=<label>                 
  vmovd %ebx, %xmm2                    #  1     0     4      OPC=vmovd_xmm_r32           
  callq .move_128_64_xmm1_xmm12_xmm13  #  2     0x4   5      OPC=callq_label             
  vminsd %xmm1, %xmm1, %xmm10          #  3     0x9   4      OPC=vminsd_xmm_xmm_xmm      
  vpunpckldq %ymm2, %ymm10, %ymm12     #  4     0xd   4      OPC=vpunpckldq_ymm_ymm_ymm  
  callq .move_64_128_xmm12_xmm13_xmm1  #  5     0x11  5      OPC=callq_label             
  retq                                 #  6     0x16  1      OPC=retq                    
                                                                                         
.size target, .-target
