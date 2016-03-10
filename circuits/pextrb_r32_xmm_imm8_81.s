  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                       #  Line  RIP  Bytes  Opcode                    
.target:                     #        0    0      OPC=<label>               
  vpbroadcastw %xmm1, %ymm7  #  1     0    5      OPC=vpbroadcastw_ymm_xmm  
  movq %xmm7, %rbx           #  2     0x5  5      OPC=movq_r64_xmm          
  movzbl %bh, %ebx           #  3     0xa  3      OPC=movzbl_r32_rh         
  retq                       #  4     0xd  1      OPC=retq                  
                                                                            
.size target, .-target
