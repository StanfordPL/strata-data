  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                           #  Line  RIP   Bytes  Opcode                    
.target:                         #        0     0      OPC=<label>               
  vpmovsxbq %xmm1, %xmm6         #  1     0     5      OPC=vpmovsxbq_xmm_xmm     
  vcvtpd2dq %ymm6, %xmm11        #  2     0x5   4      OPC=vcvtpd2dq_xmm_ymm     
  vmovhlps %xmm2, %xmm11, %xmm5  #  3     0x9   4      OPC=vmovhlps_xmm_xmm_xmm  
  movlhps %xmm5, %xmm1           #  4     0xd   3      OPC=movlhps_xmm_xmm       
  retq                           #  5     0x10  1      OPC=retq                  
                                                                                 
.size target, .-target
