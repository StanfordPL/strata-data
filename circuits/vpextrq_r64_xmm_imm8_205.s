  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                    
.target:                                        #        0     0      OPC=<label>               
  vmovhlps %xmm1, %xmm1, %xmm3                  #  1     0     4      OPC=vmovhlps_xmm_xmm_xmm  
  callq .move_128_032_xmm3_xmm4_xmm5_xmm6_xmm7  #  2     0x4   5      OPC=callq_label           
  vmovshdup %ymm3, %ymm5                        #  3     0x9   4      OPC=vmovshdup_ymm_ymm     
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm3  #  4     0xd   5      OPC=callq_label           
  movq %xmm3, %rbx                              #  5     0x12  5      OPC=movq_r64_xmm          
  retq                                          #  6     0x17  1      OPC=retq                  
                                                                                                
.size target, .-target
