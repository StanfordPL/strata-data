  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                           #  Line  RIP   Bytes  Opcode                   
.target:                         #        0     0      OPC=<label>              
  vhsubps %xmm1, %xmm1, %xmm11   #  1     0     4      OPC=vhsubps_xmm_xmm_xmm  
  vpandn %ymm11, %ymm11, %ymm11  #  2     0x4   5      OPC=vpandn_ymm_ymm_ymm   
  movapd %xmm11, %xmm9           #  3     0x9   5      OPC=movapd_xmm_xmm       
  cvtpd2dq %xmm9, %xmm1          #  4     0xe   5      OPC=cvtpd2dq_xmm_xmm     
  retq                           #  5     0x13  1      OPC=retq                 
                                                                                
.size target, .-target
