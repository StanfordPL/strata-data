  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    8 bytes

# Text                              #  Line  RIP  Bytes  Opcode             
.target:                            #        0    0      OPC=<label>        
  callq .move_128_064_xmm1_r10_r11  #  1     0    5      OPC=callq_label    
  blsrl %r10d, %ebx                 #  2     0x5  5      OPC=blsrl_r32_r32  
  xaddq %rbx, %r11                  #  3     0xa  4      OPC=xaddq_r64_r64  
  retq                              #  4     0xe  1      OPC=retq           
                                                                            
.size target, .-target
