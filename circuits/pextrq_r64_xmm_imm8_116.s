  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    8 bytes

# Text                                          #  Line  RIP  Bytes  Opcode                
.target:                                        #        0    0      OPC=<label>           
  vmovddup %xmm1, %xmm2                         #  1     0    4      OPC=vmovddup_xmm_xmm  
  callq .move_128_032_xmm2_r10d_r11d_r12d_r13d  #  2     0x4  5      OPC=callq_label       
  callq .move_032_064_r12d_r13d_rbx             #  3     0x9  5      OPC=callq_label       
  retq                                          #  4     0xe  1      OPC=retq              
                                                                                           
.size target, .-target
