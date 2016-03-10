  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    8 bytes

# Text                   #  Line  RIP  Bytes  Opcode               
.target:                 #        0    0      OPC=<label>          
  vmovupd %xmm1, %xmm14  #  1     0    4      OPC=vmovupd_xmm_xmm  
  vmovq %xmm14, %rbx     #  2     0x4  5      OPC=vmovq_r64_xmm    
  retq                   #  3     0x9  1      OPC=retq             
                                                                   
.size target, .-target
