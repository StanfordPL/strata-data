  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode            
.target:                   #        0     0      OPC=<label>       
  callq .clear_cf          #  1     0     5      OPC=callq_label   
  setge %r11b              #  2     0x5   4      OPC=setge_r8      
  callq .clear_of          #  3     0x9   5      OPC=callq_label   
  callq .read_of_into_rbx  #  4     0xe   5      OPC=callq_label   
  adcb %bl, %bl            #  5     0x13  2      OPC=adcb_r8_r8    
  movq %rbx, %rbx          #  6     0x15  3      OPC=movq_r64_r64  
  xaddb %bl, %r11b         #  7     0x18  4      OPC=xaddb_r8_r8   
  retq                     #  8     0x1c  1      OPC=retq          
                                                                   
.size target, .-target
