  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode            
.target:                   #        0     0      OPC=<label>       
  callq .read_cf_into_rbx  #  1     0     5      OPC=callq_label   
  roll $0x1, %ebx          #  2     0x5   2      OPC=roll_r32_one  
  setz %r8b                #  3     0x7   4      OPC=setz_r8       
  addb %bl, %r8b           #  4     0xb   3      OPC=addb_r8_r8    
  setbe %bl                #  5     0xe   3      OPC=setbe_r8      
  retq                     #  6     0x11  1      OPC=retq          
                                                                   
.size target, .-target
