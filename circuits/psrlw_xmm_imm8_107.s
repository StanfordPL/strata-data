  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                           #  Line  RIP  Bytes  Opcode                  
.target:                         #        0    0      OPC=<label>             
  vxorpd %xmm1, %xmm1, %xmm11    #  1     0    4      OPC=vxorpd_xmm_xmm_xmm  
  vsubsd %xmm11, %xmm11, %xmm12  #  2     0x4  5      OPC=vsubsd_xmm_xmm_xmm  
  movddup %xmm12, %xmm1          #  3     0x9  5      OPC=movddup_xmm_xmm     
  retq                           #  4     0xe  1      OPC=retq                
                                                                              
.size target, .-target
