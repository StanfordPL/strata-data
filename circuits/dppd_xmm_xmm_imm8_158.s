  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                  
.target:                               #        0     0      OPC=<label>             
  callq .move_128_64_xmm1_xmm10_xmm11  #  1     0     5      OPC=callq_label         
  vmulsd %xmm2, %xmm10, %xmm0          #  2     0x5   4      OPC=vmulsd_xmm_xmm_xmm  
  movlhps %xmm0, %xmm1                 #  3     0x9   3      OPC=movlhps_xmm_xmm     
  vcvtpd2dqx %xmm11, %xmm11            #  4     0xc   5      OPC=vcvtpd2dqx_xmm_xmm  
  addpd %xmm11, %xmm1                  #  5     0x11  5      OPC=addpd_xmm_xmm       
  movhlps %xmm11, %xmm1                #  6     0x16  4      OPC=movhlps_xmm_xmm     
  retq                                 #  7     0x1a  1      OPC=retq                
                                                                                     
.size target, .-target
