  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode              
.target:                   #        0     0      OPC=<label>         
  xorq %rax, %rax          #  1     0     3      OPC=xorq_r64_r64    
  movswq %bx, %r9          #  2     0x3   4      OPC=movswq_r64_r16  
  callq .read_pf_into_rcx  #  3     0x7   5      OPC=callq_label     
  adcw %r9w, %ax           #  4     0xc   4      OPC=adcw_r16_r16    
  adcw %cx, %bx            #  5     0x10  3      OPC=adcw_r16_r16    
  retq                     #  6     0x13  1      OPC=retq            
                                                                     
.size target, .-target
