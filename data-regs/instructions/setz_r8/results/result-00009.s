  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode              
.target:                   #        0     0      OPC=<label>         
  movq $0x10, %rdi         #  1     0     10     OPC=movq_r64_imm64  
  callq .read_zf_into_rcx  #  2     0xa   5      OPC=callq_label     
  xaddl %edi, %ecx         #  3     0xf   3      OPC=xaddl_r32_r32   
  callq .read_sf_into_rbx  #  4     0x12  5      OPC=callq_label     
  xaddb %bl, %dil          #  5     0x17  4      OPC=xaddb_r8_r8     
  retq                     #  6     0x1b  1      OPC=retq            
                                                                     
.size target, .-target
