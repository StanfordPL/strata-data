  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode              
.target:                            #        0     0      OPC=<label>         
  callq .move_128_064_xmm1_r12_r13  #  1     0     5      OPC=callq_label     
  movq $0x3, %rbx                   #  2     0x5   10     OPC=movq_r64_imm64  
  orl %r12d, %r12d                  #  3     0xf   3      OPC=orl_r32_r32     
  notw %bx                          #  4     0x12  3      OPC=notw_r16        
  xchgl %r12d, %ebx                 #  5     0x15  3      OPC=xchgl_r32_r32   
  retq                              #  6     0x18  1      OPC=retq            
                                                                              
.size target, .-target
