  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                          #  Line  RIP  Bytes  Opcode                   
.target:                        #        0    0      OPC=<label>              
  vorpd %xmm1, %xmm1, %xmm13    #  1     0    4      OPC=vorpd_xmm_xmm_xmm    
  vandnpd %xmm1, %xmm13, %xmm2  #  2     0x4  4      OPC=vandnpd_xmm_xmm_xmm  
  sqrtps %xmm2, %xmm0           #  3     0x8  3      OPC=sqrtps_xmm_xmm       
  movddup %xmm0, %xmm1          #  4     0xb  4      OPC=movddup_xmm_xmm      
  retq                          #  5     0xf  1      OPC=retq                 
                                                                              
.size target, .-target
