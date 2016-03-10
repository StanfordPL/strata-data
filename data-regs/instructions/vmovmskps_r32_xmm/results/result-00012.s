  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                     #  Line  RIP  Bytes  Opcode                 
.target:                   #        0    0      OPC=<label>            
  vpmovsxwd %xmm1, %ymm13  #  1     0    5      OPC=vpmovsxwd_ymm_xmm  
  vmovmskpd %ymm13, %rbx   #  2     0x5  5      OPC=vmovmskpd_r64_ymm  
  retq                     #  3     0xa  1      OPC=retq               
                                                                       
.size target, .-target
