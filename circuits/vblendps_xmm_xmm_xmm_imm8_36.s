  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  vunpckhps %xmm2, %xmm3, %xmm10  #  1     0     4      OPC=vunpckhps_xmm_xmm_xmm  
  vbroadcastss %xmm10, %xmm9      #  2     0x4   5      OPC=vbroadcastss_xmm_xmm   
  vpbroadcastq %xmm2, %xmm1       #  3     0x9   5      OPC=vpbroadcastq_xmm_xmm   
  vunpckhps %xmm2, %xmm9, %xmm2   #  4     0xe   4      OPC=vunpckhps_xmm_xmm_xmm  
  vunpckhpd %xmm2, %xmm1, %xmm1   #  5     0x12  4      OPC=vunpckhpd_xmm_xmm_xmm  
  retq                            #  6     0x16  1      OPC=retq                   
                                                                                   
.size target, .-target
