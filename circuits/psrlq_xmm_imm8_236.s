  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                       
.target:                             #        0     0      OPC=<label>                  
  cvtpd2ps %xmm1, %xmm3              #  1     0     4      OPC=cvtpd2ps_xmm_xmm         
  vaddsubpd %xmm3, %xmm3, %xmm13     #  2     0x4   4      OPC=vaddsubpd_xmm_xmm_xmm    
  vpunpckhqdq %xmm3, %xmm13, %xmm15  #  3     0x8   4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  movhlps %xmm13, %xmm1              #  4     0xc   4      OPC=movhlps_xmm_xmm          
  punpcklqdq %xmm15, %xmm1           #  5     0x10  5      OPC=punpcklqdq_xmm_xmm       
  retq                               #  6     0x15  1      OPC=retq                     
                                                                                        
.size target, .-target
