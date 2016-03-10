  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                       
.target:                             #        0     0      OPC=<label>                  
  movshdup %xmm1, %xmm10             #  1     0     5      OPC=movshdup_xmm_xmm         
  vfmsub231ss %xmm10, %xmm1, %xmm10  #  2     0x5   5      OPC=vfmsub231ss_xmm_xmm_xmm  
  vunpckhps %xmm10, %xmm2, %xmm12    #  3     0xa   5      OPC=vunpckhps_xmm_xmm_xmm    
  unpcklpd %xmm12, %xmm1             #  4     0xf   5      OPC=unpcklpd_xmm_xmm         
  retq                               #  5     0x14  1      OPC=retq                     
                                                                                        
.size target, .-target
