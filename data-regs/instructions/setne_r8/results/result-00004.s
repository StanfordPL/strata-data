  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode            
.target:                   #        0     0      OPC=<label>       
  callq .read_zf_into_rcx  #  1     0     5      OPC=callq_label   
  movq %rcx, %rbx          #  2     0x5   3      OPC=movq_r64_r64  
  addq %rbx, %rbx          #  3     0x8   3      OPC=addq_r64_r64  
  callq .read_zf_into_rbx  #  4     0xb   5      OPC=callq_label   
  retq                     #  5     0x10  1      OPC=retq          
                                                                   
.size target, .-target
