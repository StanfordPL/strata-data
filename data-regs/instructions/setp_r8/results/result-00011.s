  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode              
.target:                   #        0     0      OPC=<label>         
  setnp %r9b               #  1     0     4      OPC=setnp_r8        
  movq $0x0, %rbp          #  2     0x4   10     OPC=movq_r64_imm64  
  xaddb %r9b, %bpl         #  3     0xe   4      OPC=xaddb_r8_r8     
  callq .read_zf_into_rbx  #  4     0x12  5      OPC=callq_label     
  retq                     #  5     0x17  1      OPC=retq            
                                                                     
.size target, .-target
