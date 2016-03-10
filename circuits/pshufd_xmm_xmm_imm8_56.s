  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                     
.target:                            #        0     0      OPC=<label>                
  vpbroadcastd %xmm2, %xmm13        #  1     0     5      OPC=vpbroadcastd_xmm_xmm   
  vunpckhps %xmm2, %xmm13, %xmm11   #  2     0x5   4      OPC=vunpckhps_xmm_xmm_xmm  
  vunpckhps %xmm13, %xmm11, %xmm12  #  3     0x9   5      OPC=vunpckhps_xmm_xmm_xmm  
  movddup %xmm11, %xmm1             #  4     0xe   5      OPC=movddup_xmm_xmm        
  unpckhpd %xmm12, %xmm1            #  5     0x13  5      OPC=unpckhpd_xmm_xmm       
  retq                              #  6     0x18  1      OPC=retq                   
                                                                                     
.size target, .-target
