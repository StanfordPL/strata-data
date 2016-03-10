  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  vunpcklps %xmm1, %xmm1, %xmm12  #  1     0     4      OPC=vunpcklps_xmm_xmm_xmm  
  vminsd %xmm12, %xmm12, %xmm6    #  2     0x4   5      OPC=vminsd_xmm_xmm_xmm     
  vxorpd %xmm6, %xmm12, %xmm10    #  3     0x9   4      OPC=vxorpd_xmm_xmm_xmm     
  pmovzxwq %xmm10, %xmm1          #  4     0xd   6      OPC=pmovzxwq_xmm_xmm       
  retq                            #  5     0x13  1      OPC=retq                   
                                                                                   
.size target, .-target
