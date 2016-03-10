  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                  
.target:                              #        0     0      OPC=<label>             
  vmovdqu %xmm1, %xmm3                #  1     0     4      OPC=vmovdqu_xmm_xmm     
  vaddpd %ymm3, %ymm3, %ymm3          #  2     0x4   4      OPC=vaddpd_ymm_ymm_ymm  
  callq .move_256_128_ymm3_xmm8_xmm9  #  3     0x8   5      OPC=callq_label         
  cvtpd2ps %xmm9, %xmm1               #  4     0xd   5      OPC=cvtpd2ps_xmm_xmm    
  retq                                #  5     0x12  1      OPC=retq                
                                                                                    
.size target, .-target
