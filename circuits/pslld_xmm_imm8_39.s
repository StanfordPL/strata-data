  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  vmovdqu %xmm1, %xmm12           #  1     0     4      OPC=vmovdqu_xmm_xmm        
  cvtpd2dq %xmm12, %xmm6          #  2     0x4   5      OPC=cvtpd2dq_xmm_xmm       
  vunpckhpd %xmm6, %xmm6, %xmm10  #  3     0x9   4      OPC=vunpckhpd_xmm_xmm_xmm  
  cvtpd2ps %xmm10, %xmm1          #  4     0xd   5      OPC=cvtpd2ps_xmm_xmm       
  retq                            #  5     0x12  1      OPC=retq                   
                                                                                   
.size target, .-target
