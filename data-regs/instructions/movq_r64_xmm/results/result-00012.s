  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                  #  Line  RIP  Bytes  Opcode               
.target:                #        0    0      OPC=<label>          
  vmovdqu %xmm1, %xmm5  #  1     0    4      OPC=vmovdqu_xmm_xmm  
  vmovq %xmm5, %rbx     #  2     0x4  5      OPC=vmovq_r64_xmm    
  retq                  #  3     0x9  1      OPC=retq             
                                                                  
.size target, .-target
