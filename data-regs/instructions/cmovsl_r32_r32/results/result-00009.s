  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                #  Line  RIP  Bytes  Opcode               
.target:              #        0    0      OPC=<label>          
  xchgb %bl, %bl      #  1     0    2      OPC=xchgb_r8_r8      
  callq .set_of       #  2     0x2  5      OPC=callq_label      
  cmovnll %ecx, %ebx  #  3     0x7  3      OPC=cmovnll_r32_r32  
  retq                #  4     0xa  1      OPC=retq             
                                                                
.size target, .-target
