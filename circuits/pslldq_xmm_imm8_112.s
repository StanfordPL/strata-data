  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                       
.target:                             #        0     0      OPC=<label>                  
  vaddsubps %xmm1, %xmm1, %xmm11     #  1     0     4      OPC=vaddsubps_xmm_xmm_xmm    
  xorpd %xmm11, %xmm11               #  2     0x4   5      OPC=xorpd_xmm_xmm            
  pmovzxbq %xmm11, %xmm11            #  3     0x9   6      OPC=pmovzxbq_xmm_xmm         
  vpunpckhqdq %ymm11, %ymm11, %ymm7  #  4     0xf   5      OPC=vpunpckhqdq_ymm_ymm_ymm  
  cvtpd2ps %xmm7, %xmm1              #  5     0x14  4      OPC=cvtpd2ps_xmm_xmm         
  retq                               #  6     0x18  1      OPC=retq                     
                                                                                        
.size target, .-target
