  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP  Bytes  Opcode              
.target:                                          #        0    0      OPC=<label>         
  movupd %xmm1, %xmm3                             #  1     0    4      OPC=movupd_xmm_xmm  
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  2     0x4  5      OPC=callq_label     
  movq %xmm10, %rbx                               #  3     0x9  5      OPC=movq_r64_xmm    
  retq                                            #  4     0xe  1      OPC=retq            
                                                                                           
.size target, .-target
