  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP  Bytes  Opcode                     
.target:                          #        0    0      OPC=<label>                
  vminss %xmm2, %xmm2, %xmm11     #  1     0    4      OPC=vminss_xmm_xmm_xmm     
  vbroadcastss %xmm11, %xmm1      #  2     0x4  5      OPC=vbroadcastss_xmm_xmm   
  vunpckhps %xmm1, %xmm11, %xmm1  #  3     0x9  4      OPC=vunpckhps_xmm_xmm_xmm  
  retq                            #  4     0xd  1      OPC=retq                   
                                                                                  
.size target, .-target
