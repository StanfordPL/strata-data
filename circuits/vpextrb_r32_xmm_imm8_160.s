  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  movq $0xfffffffffffffffd, %rbx  #  1     0     10     OPC=movq_r64_imm64  
  callq .move_128_064_xmm1_r8_r9  #  2     0xa   5      OPC=callq_label     
  negl %ebx                       #  3     0xf   2      OPC=negl_r32        
  xaddb %bl, %r8b                 #  4     0x11  4      OPC=xaddb_r8_r8     
  retq                            #  5     0x15  1      OPC=retq            
                                                                            
.size target, .-target
