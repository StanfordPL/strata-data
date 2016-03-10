  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    8 bytes

# Text                              #  Line  RIP   Bytes  Opcode              
.target:                            #        0     0      OPC=<label>         
  xorb %r9b, %r9b                   #  1     0     3      OPC=xorb_r8_r8      
  movq $0x40, %rbx                  #  2     0x3   10     OPC=movq_r64_imm64  
  callq .move_128_064_xmm1_r10_r11  #  3     0xd   5      OPC=callq_label     
  cmovpq %r11, %rbx                 #  4     0x12  4      OPC=cmovpq_r64_r64  
  retq                              #  5     0x16  1      OPC=retq            
                                                                              
.size target, .-target
