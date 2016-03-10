  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  cvtpd2dq %xmm1, %xmm15          #  1     0     5      OPC=cvtpd2dq_xmm_xmm       
  vunpcklps %xmm15, %xmm1, %xmm2  #  2     0x5   5      OPC=vunpcklps_xmm_xmm_xmm  
  vunpckhps %xmm1, %xmm2, %xmm5   #  3     0xa   4      OPC=vunpckhps_xmm_xmm_xmm  
  unpckhps %xmm15, %xmm1          #  4     0xe   4      OPC=unpckhps_xmm_xmm       
  movsd %xmm5, %xmm1              #  5     0x12  4      OPC=movsd_xmm_xmm          
  retq                            #  6     0x16  1      OPC=retq                   
                                                                                   
.size target, .-target
