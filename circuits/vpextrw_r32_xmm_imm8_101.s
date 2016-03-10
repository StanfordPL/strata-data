  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                       
.target:                               #        0     0      OPC=<label>                  
  callq .move_128_64_xmm1_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  vcvtpd2dqx %xmm11, %xmm0             #  2     0x5   5      OPC=vcvtpd2dqx_xmm_xmm       
  pmovzxwq %xmm11, %xmm2               #  3     0xa   6      OPC=pmovzxwq_xmm_xmm         
  vfmsub132ss %xmm0, %xmm11, %xmm2     #  4     0x10  5      OPC=vfmsub132ss_xmm_xmm_xmm  
  callq .move_128_064_xmm2_r10_r11     #  5     0x15  5      OPC=callq_label              
  movzwl %r11w, %ebx                   #  6     0x1a  4      OPC=movzwl_r32_r16           
  retq                                 #  7     0x1e  1      OPC=retq                     
                                                                                          
.size target, .-target
