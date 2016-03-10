  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                   #  Line  RIP  Bytes  Opcode                 
.target:                 #        0    0      OPC=<label>            
  rcpss %xmm1, %xmm1     #  1     0    4      OPC=rcpss_xmm_xmm      
  vmovmskpd %xmm1, %rbx  #  2     0x4  4      OPC=vmovmskpd_r64_xmm  
  retq                   #  3     0x8  1      OPC=retq               
                                                                     
.size target, .-target
