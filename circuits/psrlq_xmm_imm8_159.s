  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                     
.target:                               #        0     0      OPC=<label>                
  vcvtpd2dqx %xmm1, %xmm10             #  1     0     4      OPC=vcvtpd2dqx_xmm_xmm     
  vunpckhpd %ymm10, %ymm10, %ymm11     #  2     0x4   5      OPC=vunpckhpd_ymm_ymm_ymm  
  vorpd %xmm11, %xmm11, %xmm8          #  3     0x9   5      OPC=vorpd_xmm_xmm_xmm      
  movapd %xmm8, %xmm10                 #  4     0xe   5      OPC=movapd_xmm_xmm         
  callq .move_64_128_xmm10_xmm11_xmm1  #  5     0x13  5      OPC=callq_label            
  retq                                 #  6     0x18  1      OPC=retq                   
                                                                                        
.size target, .-target
