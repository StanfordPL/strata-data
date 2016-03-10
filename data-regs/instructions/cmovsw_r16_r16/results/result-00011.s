  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                #  Line  RIP  Bytes  Opcode               
.target:              #        0    0      OPC=<label>          
  movw %cx, %r13w     #  1     0    4      OPC=movw_r16_r16     
  callq .set_of       #  2     0x4  5      OPC=callq_label      
  cmovgew %r13w, %bx  #  3     0x9  5      OPC=cmovgew_r16_r16  
  retq                #  4     0xe  1      OPC=retq             
                                                                
.size target, .-target
