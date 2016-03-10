  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                           #  Line  RIP   Bytes  Opcode                    
.target:                         #        0     0      OPC=<label>               
  vsqrtpd %xmm1, %xmm2           #  1     0     4      OPC=vsqrtpd_xmm_xmm       
  cvtpd2dq %xmm2, %xmm1          #  2     0x4   4      OPC=cvtpd2dq_xmm_xmm      
  vrsqrtss %xmm1, %xmm1, %xmm14  #  3     0x8   4      OPC=vrsqrtss_xmm_xmm_xmm  
  punpckhqdq %xmm14, %xmm1       #  4     0xc   5      OPC=punpckhqdq_xmm_xmm    
  retq                           #  5     0x11  1      OPC=retq                  
                                                                                 
.size target, .-target
