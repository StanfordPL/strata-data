  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                     #  Line  RIP   Bytes  Opcode              
.target:                   #        0     0      OPC=<label>         
  movq $0x3, %rbx          #  1     0     10     OPC=movq_r64_imm64  
  callq .set_szp_for_ebx   #  2     0xa   5      OPC=callq_label     
  callq .read_zf_into_rbx  #  3     0xf   5      OPC=callq_label     
  xaddb %cl, %bl           #  4     0x14  3      OPC=xaddb_r8_r8     
  retq                     #  5     0x17  1      OPC=retq            
                                                                     
.size target, .-target
