  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    8 bytes

# Text                              #  Line  RIP  Bytes  Opcode             
.target:                            #        0    0      OPC=<label>        
  xorl %ebx, %ebx                   #  1     0    2      OPC=xorl_r32_r32   
  callq .move_128_064_xmm1_r10_r11  #  2     0x2  5      OPC=callq_label    
  sarl $0x1, %ebx                   #  3     0x7  2      OPC=sarl_r32_one   
  xchgq %rbx, %r10                  #  4     0x9  3      OPC=xchgq_r64_r64  
  retq                              #  5     0xc  1      OPC=retq           
                                                                            
.size target, .-target
