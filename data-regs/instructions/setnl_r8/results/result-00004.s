  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode             
.target:                   #        0     0      OPC=<label>        
  setge %r11b              #  1     0     4      OPC=setge_r8       
  callq .read_of_into_rbx  #  2     0x4   5      OPC=callq_label    
  movzbw %r11b, %r13w      #  3     0x9   5      OPC=movzbw_r16_r8  
  xaddw %bx, %r13w         #  4     0xe   5      OPC=xaddw_r16_r16  
  retq                     #  5     0x13  1      OPC=retq           
                                                                    
.size target, .-target
