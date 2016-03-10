  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                     #  Line  RIP   Bytes  Opcode              
.target:                   #        0     0      OPC=<label>         
  movzbl %bl, %r10d        #  1     0     4      OPC=movzbl_r32_r8   
  movzbl %cl, %eax         #  2     0x4   3      OPC=movzbl_r32_r8   
  xorq %r10, %rax          #  3     0x7   3      OPC=xorq_r64_r64    
  callq .read_cf_into_rbx  #  4     0xa   5      OPC=callq_label     
  movswq %ax, %r12         #  5     0xf   4      OPC=movswq_r64_r16  
  xaddb %bl, %r12b         #  6     0x13  4      OPC=xaddb_r8_r8     
  retq                     #  7     0x17  1      OPC=retq            
                                                                     
.size target, .-target
