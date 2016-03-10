  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  vxorps %xmm0, %xmm0, %xmm12       #  1     0     4      OPC=vxorps_xmm_xmm_xmm       
  vfmsub213ps %xmm12, %xmm1, %xmm2  #  2     0x4   5      OPC=vfmsub213ps_xmm_xmm_xmm  
  cvtsd2ss %xmm12, %xmm2            #  3     0x9   5      OPC=cvtsd2ss_xmm_xmm         
  vunpcklps %xmm2, %xmm2, %xmm5     #  4     0xe   4      OPC=vunpcklps_xmm_xmm_xmm    
  vaddps %ymm5, %ymm12, %ymm8       #  5     0x12  4      OPC=vaddps_ymm_ymm_ymm       
  movupd %xmm8, %xmm3               #  6     0x16  5      OPC=movupd_xmm_xmm           
  movdqu %xmm3, %xmm1               #  7     0x1b  4      OPC=movdqu_xmm_xmm           
  retq                              #  8     0x1f  1      OPC=retq                     
                                                                                       
.size target, .-target
