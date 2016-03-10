  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode               
.target:                                        #        0     0      OPC=<label>          
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label      
  vmovapd %xmm4, %xmm6                          #  2     0x5   4      OPC=vmovapd_xmm_xmm  
  vmovaps %xmm4, %xmm5                          #  3     0x9   4      OPC=vmovaps_xmm_xmm  
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm2  #  4     0xd   5      OPC=callq_label      
  movaps %xmm2, %xmm1                           #  5     0x12  3      OPC=movaps_xmm_xmm   
  retq                                          #  6     0x15  1      OPC=retq             
                                                                                           
.size target, .-target
