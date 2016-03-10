  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                     #  Line  RIP  Bytes  Opcode                 
.target:                   #        0    0      OPC=<label>            
  vmovq %xmm2, %xmm12      #  1     0    4      OPC=vmovq_xmm_xmm      
  vcvtpd2ps %xmm12, %xmm6  #  2     0x4  5      OPC=vcvtpd2ps_xmm_xmm  
  movss %xmm6, %xmm1       #  3     0x9  4      OPC=movss_xmm_xmm      
  retq                     #  4     0xd  1      OPC=retq               
                                                                       
.size target, .-target
