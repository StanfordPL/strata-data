  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  vxorps %xmm1, %xmm1, %xmm7  #  1     0    4      OPC=vxorps_xmm_xmm_xmm  
  cvtpd2ps %xmm7, %xmm1       #  2     0x4  4      OPC=cvtpd2ps_xmm_xmm    
  retq                        #  3     0x8  1      OPC=retq                
                                                                           
.size target, .-target
