  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                             #  Line  RIP   Bytes  Opcode                  
.target:                           #        0     0      OPC=<label>             
  vminps %xmm1, %xmm1, %xmm2       #  1     0     4      OPC=vminps_xmm_xmm_xmm  
  vcvtpd2dq %ymm2, %xmm3           #  2     0x4   4      OPC=vcvtpd2dq_xmm_ymm   
  callq .move_128_064_xmm3_r8_r9   #  3     0x8   5      OPC=callq_label         
  callq .move_032_064_r8d_r9d_rbx  #  4     0xd   5      OPC=callq_label         
  retq                             #  5     0x12  1      OPC=retq                
                                                                                 
.size target, .-target
