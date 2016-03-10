  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  vpbroadcastd %xmm2, %xmm12      #  1     0     5      OPC=vpbroadcastd_xmm_xmm   
  vunpckhps %xmm12, %xmm2, %xmm0  #  2     0x5   5      OPC=vunpckhps_xmm_xmm_xmm  
  vmovupd %xmm0, %xmm10           #  3     0xa   4      OPC=vmovupd_xmm_xmm        
  movddup %xmm10, %xmm1           #  4     0xe   5      OPC=movddup_xmm_xmm        
  punpckldq %xmm12, %xmm1         #  5     0x13  5      OPC=punpckldq_xmm_xmm      
  retq                            #  6     0x18  1      OPC=retq                   
                                                                                   
.size target, .-target
