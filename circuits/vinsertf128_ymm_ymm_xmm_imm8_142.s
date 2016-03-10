  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  vmovdqu %ymm2, %ymm1                          #  1     0     4      OPC=vmovdqu_ymm_ymm    
  callq .move_128_032_xmm3_xmm4_xmm5_xmm6_xmm7  #  2     0x4   5      OPC=callq_label        
  punpckldq %xmm4, %xmm6                        #  3     0x9   4      OPC=punpckldq_xmm_xmm  
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  4     0xd   5      OPC=callq_label        
  retq                                          #  5     0x12  1      OPC=retq               
                                                                                             
.size target, .-target
