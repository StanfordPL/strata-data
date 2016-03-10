  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                     #  Line  RIP   Bytes  Opcode                 
.target:                   #        0     0      OPC=<label>            
  vcvtps2pd %xmm1, %xmm0   #  1     0     4      OPC=vcvtps2pd_xmm_xmm  
  vcvtpd2ps %xmm0, %xmm15  #  2     0x4   4      OPC=vcvtpd2ps_xmm_xmm  
  vcvtpd2dq %ymm15, %xmm1  #  3     0x8   5      OPC=vcvtpd2dq_xmm_ymm  
  movq %xmm1, %rbx         #  4     0xd   5      OPC=movq_r64_xmm       
  retq                     #  5     0x12  1      OPC=retq               
                                                                        
.size target, .-target
