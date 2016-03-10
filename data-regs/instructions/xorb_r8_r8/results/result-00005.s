  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text               #  Line  RIP   Bytes  Opcode              
.target:             #        0     0      OPC=<label>         
  movsbl %cl, %edi   #  1     0     3      OPC=movsbl_r32_r8   
  movsbl %bl, %r9d   #  2     0x3   4      OPC=movsbl_r32_r8   
  xorw %r9w, %di     #  3     0x7   4      OPC=xorw_r16_r16    
  callq .clear_cf    #  4     0xb   5      OPC=callq_label     
  movslq %edi, %rbx  #  5     0x10  3      OPC=movslq_r64_r32  
  retq               #  6     0x13  1      OPC=retq            
                                                               
.size target, .-target
