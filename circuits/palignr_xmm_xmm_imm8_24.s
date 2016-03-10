  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                     #  Line  RIP  Bytes  Opcode                  
.target:                   #        0    0      OPC=<label>             
  cvtpd2dq %xmm1, %xmm8    #  1     0    5      OPC=cvtpd2dq_xmm_xmm    
  punpckhqdq %xmm8, %xmm1  #  2     0x5  5      OPC=punpckhqdq_xmm_xmm  
  retq                     #  3     0xa  1      OPC=retq                
                                                                        
.size target, .-target
