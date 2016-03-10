  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  vpandn %xmm1, %xmm1, %xmm0  #  1     0    4      OPC=vpandn_xmm_xmm_xmm  
  vminpd %xmm0, %xmm0, %xmm2  #  2     0x4  4      OPC=vminpd_xmm_xmm_xmm  
  sqrtpd %xmm2, %xmm1         #  3     0x8  4      OPC=sqrtpd_xmm_xmm      
  retq                        #  4     0xc  1      OPC=retq                
                                                                           
.size target, .-target
