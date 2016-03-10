  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                  
.target:                            #        0     0      OPC=<label>             
  vpandn %xmm1, %xmm1, %xmm8        #  1     0     4      OPC=vpandn_xmm_xmm_xmm  
  vcvtps2dq %ymm8, %ymm3            #  2     0x4   5      OPC=vcvtps2dq_ymm_ymm   
  callq .move_128_064_xmm3_r10_r11  #  3     0x9   5      OPC=callq_label         
  movd %r10d, %xmm1                 #  4     0xe   5      OPC=movd_xmm_r32        
  retq                              #  5     0x13  1      OPC=retq                
                                                                                  
.size target, .-target
