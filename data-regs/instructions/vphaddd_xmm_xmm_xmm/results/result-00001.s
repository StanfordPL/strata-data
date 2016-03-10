  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                   
.target:                            #        0     0      OPC=<label>              
  callq .move_128_064_xmm3_r10_r11  #  1     0     5      OPC=callq_label          
  vmovaps %xmm2, %xmm14             #  2     0x5   4      OPC=vmovaps_xmm_xmm      
  vmaxsd %xmm2, %xmm14, %xmm2       #  3     0x9   4      OPC=vmaxsd_xmm_xmm_xmm   
  callq .move_064_128_r10_r11_xmm2  #  4     0xd   5      OPC=callq_label          
  vphaddd %ymm2, %ymm14, %ymm1      #  5     0x12  5      OPC=vphaddd_ymm_ymm_ymm  
  retq                              #  6     0x17  1      OPC=retq                 
                                                                                   
.size target, .-target
