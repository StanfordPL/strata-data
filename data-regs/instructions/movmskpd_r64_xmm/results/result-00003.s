  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                   #  Line  RIP  Bytes  Opcode                 
.target:                 #        0    0      OPC=<label>            
  sqrtpd %xmm1, %xmm6    #  1     0    4      OPC=sqrtpd_xmm_xmm     
  vmovmskpd %xmm6, %rbx  #  2     0x4  4      OPC=vmovmskpd_r64_xmm  
  retq                   #  3     0x8  1      OPC=retq               
                                                                     
.size target, .-target
