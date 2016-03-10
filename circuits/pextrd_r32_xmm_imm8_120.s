  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode             
.target:                            #        0     0      OPC=<label>        
  movq %xmm1, %rbx                  #  1     0     5      OPC=movq_r64_xmm   
  callq .move_128_064_xmm1_r10_r11  #  2     0x5   5      OPC=callq_label    
  sarl $0x1, %ebx                   #  3     0xa   2      OPC=sarl_r32_one   
  xaddl %ebx, %r10d                 #  4     0xc   4      OPC=xaddl_r32_r32  
  retq                              #  5     0x10  1      OPC=retq           
                                                                             
.size target, .-target
