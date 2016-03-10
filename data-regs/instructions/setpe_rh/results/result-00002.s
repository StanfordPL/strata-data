  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode              
.target:                   #        0     0      OPC=<label>         
  callq .read_pf_into_rbx  #  1     0     5      OPC=callq_label     
  movq $0x20, %rax         #  2     0x5   10     OPC=movq_r64_imm64  
  xaddb %bl, %ah           #  3     0xf   3      OPC=xaddb_rh_r8     
  xchgl %eax, %eax         #  4     0x12  2      OPC=xchgl_r32_r32   
  retq                     #  5     0x14  1      OPC=retq            
                                                                     
.size target, .-target
