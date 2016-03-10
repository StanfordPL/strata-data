  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    8 bytes

# Text                             #  Line  RIP  Bytes  Opcode                      
.target:                           #        0    0      OPC=<label>                 
  vpunpckhdq %xmm1, %xmm1, %xmm2   #  1     0    4      OPC=vpunpckhdq_xmm_xmm_xmm  
  callq .move_128_064_xmm2_r8_r9   #  2     0x4  5      OPC=callq_label             
  callq .move_032_064_r8d_r9d_rbx  #  3     0x9  5      OPC=callq_label             
  retq                             #  4     0xe  1      OPC=retq                    
                                                                                    
.size target, .-target
