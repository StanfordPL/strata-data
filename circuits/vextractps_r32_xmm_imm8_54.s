  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  callq .move_128_064_xmm1_r8_r9  #  1     0     5      OPC=callq_label     
  xorb %dil, %dil                 #  2     0x5   2      OPC=xorb_r8_r8      
  movq $0x0, %rbx                 #  3     0x7   10     OPC=movq_r64_imm64  
  cmovpl %r9d, %ebx               #  4     0x11  4      OPC=cmovpl_r32_r32  
  retq                            #  5     0x15  1      OPC=retq            
                                                                            
.size target, .-target
