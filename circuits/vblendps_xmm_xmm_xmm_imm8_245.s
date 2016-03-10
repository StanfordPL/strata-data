  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  movsldup %xmm3, %xmm13          #  1     0     5      OPC=movsldup_xmm_xmm       
  vunpckhps %xmm2, %xmm13, %xmm5  #  2     0x5   4      OPC=vunpckhps_xmm_xmm_xmm  
  vmovss %xmm13, %xmm2, %xmm11    #  3     0x9   5      OPC=vmovss_xmm_xmm_xmm     
  vmovsd %xmm11, %xmm5, %xmm1     #  4     0xe   5      OPC=vmovsd_xmm_xmm_xmm     
  retq                            #  5     0x13  1      OPC=retq                   
                                                                                   
.size target, .-target
