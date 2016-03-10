  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text               #  Line  RIP   Bytes  Opcode             
.target:             #        0     0      OPC=<label>        
  callq .clear_of    #  1     0     5      OPC=callq_label    
  movl %ebx, %edi    #  2     0x5   2      OPC=movl_r32_r32   
  seto %dil          #  3     0x7   4      OPC=seto_r8        
  decw %di           #  4     0xb   3      OPC=decw_r16       
  movsbl %dil, %edi  #  5     0xe   4      OPC=movsbl_r32_r8  
  xaddl %edi, %ebx   #  6     0x12  3      OPC=xaddl_r32_r32  
  retq               #  7     0x15  1      OPC=retq           
                                                              
.size target, .-target
