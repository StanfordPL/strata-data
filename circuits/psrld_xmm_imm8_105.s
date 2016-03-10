  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP  Bytes  Opcode                
.target:                               #        0    0      OPC=<label>           
  callq .move_128_64_xmm1_xmm12_xmm13  #  1     0    5      OPC=callq_label       
  cvtdq2ps %xmm12, %xmm1               #  2     0x5  4      OPC=cvtdq2ps_xmm_xmm  
  addsubpd %xmm1, %xmm1                #  3     0x9  4      OPC=addsubpd_xmm_xmm  
  retq                                 #  4     0xd  1      OPC=retq              
                                                                                  
.size target, .-target
