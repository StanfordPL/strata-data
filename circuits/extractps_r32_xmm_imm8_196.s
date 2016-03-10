  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode              
.target:                            #        0     0      OPC=<label>         
  xorw %di, %di                     #  1     0     3      OPC=xorw_r16_r16    
  movq $0x0, %rbx                   #  2     0x3   10     OPC=movq_r64_imm64  
  callq .move_128_064_xmm1_r12_r13  #  3     0xd   5      OPC=callq_label     
  setno %bl                         #  4     0x12  3      OPC=setno_r8        
  cmovpl %r12d, %ebx                #  5     0x15  4      OPC=cmovpl_r32_r32  
  retq                              #  6     0x19  1      OPC=retq            
                                                                              
.size target, .-target
