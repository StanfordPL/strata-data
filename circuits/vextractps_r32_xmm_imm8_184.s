  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode              
.target:                               #        0     0      OPC=<label>         
  movq $0x40, %rbx                     #  1     0     10     OPC=movq_r64_imm64  
  callq .move_128_64_xmm1_xmm12_xmm13  #  2     0xa   5      OPC=callq_label     
  movq %xmm12, %rsi                    #  3     0xf   5      OPC=movq_r64_xmm    
  xaddl %ebx, %esi                     #  4     0x14  3      OPC=xaddl_r32_r32   
  retq                                 #  5     0x17  1      OPC=retq            
                                                                                 
.size target, .-target
