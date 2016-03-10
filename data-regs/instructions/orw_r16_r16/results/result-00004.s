  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode                 
.target:                   #        0     0      OPC=<label>            
  movq $0x6, %rbp          #  1     0     10     OPC=movq_r64_imm64     
  movswq %cx, %rax         #  2     0xa   4      OPC=movswq_r64_r16     
  xchgw %bx, %bp           #  3     0xe   3      OPC=xchgw_r16_r16      
  andnl %eax, %ebp, %r13d  #  4     0x11  5      OPC=andnl_r32_r32_r32  
  addw %bp, %r13w          #  5     0x16  4      OPC=addw_r16_r16       
  xchgw %r13w, %bx         #  6     0x1a  4      OPC=xchgw_r16_r16      
  retq                     #  7     0x1e  1      OPC=retq               
                                                                        
.size target, .-target
