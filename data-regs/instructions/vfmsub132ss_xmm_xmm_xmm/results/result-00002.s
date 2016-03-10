  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                       
.target:                               #        0     0      OPC=<label>                  
  vmovdqa %xmm1, %xmm1                 #  1     0     4      OPC=vmovdqa_xmm_xmm          
  callq .move_128_64_xmm1_xmm12_xmm13  #  2     0x4   5      OPC=callq_label              
  vfmsub231ss %xmm3, %xmm12, %xmm2     #  3     0x9   5      OPC=vfmsub231ss_xmm_xmm_xmm  
  movss %xmm2, %xmm1                   #  4     0xe   4      OPC=movss_xmm_xmm            
  retq                                 #  5     0x12  1      OPC=retq                     
                                                                                          
.size target, .-target
