  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP  Bytes  Opcode                   
.target:                               #        0    0      OPC=<label>              
  vandnpd %xmm1, %xmm1, %xmm3          #  1     0    4      OPC=vandnpd_xmm_xmm_xmm  
  callq .move_128_64_xmm3_xmm12_xmm13  #  2     0x4  5      OPC=callq_label          
  movddup %xmm12, %xmm1                #  3     0x9  5      OPC=movddup_xmm_xmm      
  retq                                 #  4     0xe  1      OPC=retq                 
                                                                                     
.size target, .-target
