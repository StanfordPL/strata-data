  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode               
.target:                   #        0     0      OPC=<label>          
  movswq %bx, %rdi         #  1     0     4      OPC=movswq_r64_r16   
  xorq %rcx, %rcx          #  2     0x4   3      OPC=xorq_r64_r64     
  callq .read_pf_into_rbx  #  3     0x7   5      OPC=callq_label      
  incw %bx                 #  4     0xc   3      OPC=incw_r16         
  sarq $0x1, %rdi          #  5     0xf   3      OPC=sarq_r64_one     
  cmovnow %di, %bx         #  6     0x12  4      OPC=cmovnow_r16_r16  
  retq                     #  7     0x16  1      OPC=retq             
                                                                      
.size target, .-target
