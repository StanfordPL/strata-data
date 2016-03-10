  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  vmovddup %xmm1, %xmm10          #  1     0     4      OPC=vmovddup_xmm_xmm       
  vpbroadcastq %xmm2, %ymm6       #  2     0x4   5      OPC=vpbroadcastq_ymm_xmm   
  vunpckhps %xmm6, %xmm10, %xmm5  #  3     0x9   4      OPC=vunpckhps_xmm_xmm_xmm  
  movapd %xmm5, %xmm1             #  4     0xd   4      OPC=movapd_xmm_xmm         
  retq                            #  5     0x11  1      OPC=retq                   
                                                                                   
.size target, .-target
