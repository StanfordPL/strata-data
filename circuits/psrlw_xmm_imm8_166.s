  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                   #  Line  RIP  Bytes  Opcode                
.target:                 #        0    0      OPC=<label>           
  mulss %xmm1, %xmm1     #  1     0    4      OPC=mulss_xmm_xmm     
  cvtpd2dq %xmm1, %xmm1  #  2     0x4  4      OPC=cvtpd2dq_xmm_xmm  
  maxsd %xmm1, %xmm1     #  3     0x8  4      OPC=maxsd_xmm_xmm     
  movhlps %xmm1, %xmm1   #  4     0xc  3      OPC=movhlps_xmm_xmm   
  retq                   #  5     0xf  1      OPC=retq              
                                                                    
.size target, .-target
