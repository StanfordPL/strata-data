  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                           #  Line  RIP   Bytes  Opcode                     
.target:                         #        0     0      OPC=<label>                
  vpbroadcastq %xmm2, %xmm4      #  1     0     5      OPC=vpbroadcastq_xmm_xmm   
  vmovddup %xmm1, %xmm0          #  2     0x5   4      OPC=vmovddup_xmm_xmm       
  vunpckhps %xmm4, %xmm0, %xmm5  #  3     0x9   4      OPC=vunpckhps_xmm_xmm_xmm  
  movdqa %xmm5, %xmm1            #  4     0xd   4      OPC=movdqa_xmm_xmm         
  retq                           #  5     0x11  1      OPC=retq                   
                                                                                  
.size target, .-target
