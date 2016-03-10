  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode                 
.target:                   #        0     0      OPC=<label>            
  movq %rbx, %rdi          #  1     0     3      OPC=movq_r64_r64       
  andnl %edi, %edi, %r9d   #  2     0x3   5      OPC=andnl_r32_r32_r32  
  callq .read_of_into_rbx  #  3     0x8   5      OPC=callq_label        
  cmoval %r9d, %ebx        #  4     0xd   4      OPC=cmoval_r32_r32     
  cmovzw %bx, %bx          #  5     0x11  4      OPC=cmovzw_r16_r16     
  xchgq %rbx, %rbx         #  6     0x15  3      OPC=xchgq_r64_r64      
  subq %rdi, %rbx          #  7     0x18  3      OPC=subq_r64_r64       
  retq                     #  8     0x1b  1      OPC=retq               
                                                                        
.size target, .-target
