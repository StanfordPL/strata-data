  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  vxorpd %xmm1, %xmm1, %xmm6  #  1     0    4      OPC=vxorpd_xmm_xmm_xmm  
  unpcklpd %xmm6, %xmm6       #  2     0x4  4      OPC=unpcklpd_xmm_xmm    
  cvtpd2dq %xmm6, %xmm1       #  3     0x8  4      OPC=cvtpd2dq_xmm_xmm    
  retq                        #  4     0xc  1      OPC=retq                
                                                                           
.size target, .-target
