  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                    
.target:                            #        0     0      OPC=<label>               
  pmovzxwq %xmm1, %xmm2             #  1     0     5      OPC=pmovzxwq_xmm_xmm      
  vmovlhps %xmm2, %xmm1, %xmm4      #  2     0x5   4      OPC=vmovlhps_xmm_xmm_xmm  
  vmovshdup %ymm4, %ymm2            #  3     0x9   4      OPC=vmovshdup_ymm_ymm     
  callq .move_128_064_xmm2_r10_r11  #  4     0xd   5      OPC=callq_label           
  movzbl %r10b, %ebx                #  5     0x12  4      OPC=movzbl_r32_r8         
  retq                              #  6     0x16  1      OPC=retq                  
                                                                                    
.size target, .-target
