  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                         #  Line  RIP  Bytes  Opcode                  
.target:                       #        0    0      OPC=<label>             
  vmaxpd %xmm1, %xmm1, %xmm10  #  1     0    4      OPC=vmaxpd_xmm_xmm_xmm  
  cvtpd2dq %xmm10, %xmm1       #  2     0x4  5      OPC=cvtpd2dq_xmm_xmm    
  punpckhqdq %xmm1, %xmm1      #  3     0x9  4      OPC=punpckhqdq_xmm_xmm  
  retq                         #  4     0xd  1      OPC=retq                
                                                                            
.size target, .-target
