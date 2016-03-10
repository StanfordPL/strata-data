  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode                 
.target:                   #        0    0      OPC=<label>            
  vcvtdq2ps %xmm2, %xmm12  #  1     0    4      OPC=vcvtdq2ps_xmm_xmm  
  movupd %xmm12, %xmm2     #  2     0x4  5      OPC=movupd_xmm_xmm     
  movdqa %xmm2, %xmm1      #  3     0x9  4      OPC=movdqa_xmm_xmm     
  retq                     #  4     0xd  1      OPC=retq               
                                                                       
.size target, .-target
