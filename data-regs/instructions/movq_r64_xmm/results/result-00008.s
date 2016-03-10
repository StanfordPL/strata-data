  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                   #  Line  RIP  Bytes  Opcode               
.target:                 #        0    0      OPC=<label>          
  vmovupd %xmm1, %xmm15  #  1     0    4      OPC=vmovupd_xmm_xmm  
  vmovq %xmm15, %rbx     #  2     0x4  5      OPC=vmovq_r64_xmm    
  retq                   #  3     0x9  1      OPC=retq             
                                                                   
.size target, .-target
