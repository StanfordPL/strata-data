  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  vmovups %xmm1, %xmm8            #  1     0     4      OPC=vmovups_xmm_xmm        
  vpandn %xmm8, %xmm1, %xmm7      #  2     0x4   5      OPC=vpandn_xmm_xmm_xmm     
  vunpckhps %xmm7, %xmm7, %xmm12  #  3     0x9   4      OPC=vunpckhps_xmm_xmm_xmm  
  pmovzxwq %xmm12, %xmm1          #  4     0xd   6      OPC=pmovzxwq_xmm_xmm       
  retq                            #  5     0x13  1      OPC=retq                   
                                                                                   
.size target, .-target
