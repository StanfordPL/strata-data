  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                 #  Line  RIP   Bytes  Opcode                
.target:               #        0     0      OPC=<label>           
  movq $0x7, %rdx      #  1     0     10     OPC=movq_r64_imm64    
  cmovnzq %rcx, %rdx   #  2     0xa   4      OPC=cmovnzq_r64_r64   
  cmovnleq %rdx, %rbx  #  3     0xe   4      OPC=cmovnleq_r64_r64  
  retq                 #  4     0x12  1      OPC=retq              
                                                                   
.size target, .-target
