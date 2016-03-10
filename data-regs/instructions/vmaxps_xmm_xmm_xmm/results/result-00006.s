  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                              #  Line  RIP   Bytes  Opcode                  
.target:                            #        0     0      OPC=<label>             
  vmovdqu %xmm2, %xmm4              #  1     0     4      OPC=vmovdqu_xmm_xmm     
  vcvtpd2dq %ymm4, %xmm1            #  2     0x4   4      OPC=vcvtpd2dq_xmm_ymm   
  callq .move_128_064_xmm3_r10_r11  #  3     0x8   5      OPC=callq_label         
  callq .move_064_128_r10_r11_xmm1  #  4     0xd   5      OPC=callq_label         
  vmaxps %ymm1, %ymm4, %ymm1        #  5     0x12  4      OPC=vmaxps_ymm_ymm_ymm  
  retq                              #  6     0x16  1      OPC=retq                
                                                                                  
.size target, .-target
