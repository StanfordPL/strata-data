  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                            #  Line  RIP   Bytes  Opcode                    
.target:                          #        0     0      OPC=<label>               
  vmovd %ecx, %xmm0               #  1     0     4      OPC=vmovd_xmm_r32         
  vpbroadcastq %xmm0, %ymm2       #  2     0x4   5      OPC=vpbroadcastq_ymm_xmm  
  callq .move_128_064_xmm2_r8_r9  #  3     0x9   5      OPC=callq_label           
  cmovpel %r9d, %ebx              #  4     0xe   4      OPC=cmovpel_r32_r32       
  retq                            #  5     0x12  1      OPC=retq                  
                                                                                  
.size target, .-target
