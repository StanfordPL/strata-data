  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                         #  Line  RIP  Bytes  Opcode                   
.target:                       #        0    0      OPC=<label>              
  movapd %xmm1, %xmm8          #  1     0    5      OPC=movapd_xmm_xmm       
  vandnps %xmm8, %xmm8, %xmm3  #  2     0x5  5      OPC=vandnps_xmm_xmm_xmm  
  cvtpd2dq %xmm3, %xmm1        #  3     0xa  4      OPC=cvtpd2dq_xmm_xmm     
  retq                         #  4     0xe  1      OPC=retq                 
                                                                             
.size target, .-target
