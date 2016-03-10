  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode              
.target:                   #        0     0      OPC=<label>         
  callq .read_zf_into_rbx  #  1     0     5      OPC=callq_label     
  xaddb %bh, %bl           #  2     0x5   3      OPC=xaddb_r8_rh     
  movq $0x0, %rax          #  3     0x8   10     OPC=movq_r64_imm64  
  xchgl %eax, %ebx         #  4     0x12  1      OPC=xchgl_r32_eax   
  retq                     #  5     0x13  1      OPC=retq            
                                                                     
.size target, .-target
