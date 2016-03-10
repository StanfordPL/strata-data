  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode              
.target:                   #        0     0      OPC=<label>         
  movq $0x3, %rax          #  1     0     10     OPC=movq_r64_imm64  
  callq .read_of_into_rcx  #  2     0xa   5      OPC=callq_label     
  movslq %ecx, %rdx        #  3     0xf   3      OPC=movslq_r64_r32  
  xaddb %ah, %dl           #  4     0x12  3      OPC=xaddb_r8_rh     
  retq                     #  5     0x15  1      OPC=retq            
                                                                     
.size target, .-target
