  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  vpandn %xmm1, %xmm1, %xmm5  #  1     0    4      OPC=vpandn_xmm_xmm_xmm  
  cvtpd2dq %xmm5, %xmm1       #  2     0x4  4      OPC=cvtpd2dq_xmm_xmm    
  retq                        #  3     0x8  1      OPC=retq                
                                                                           
.size target, .-target
