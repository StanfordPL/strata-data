  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP  Bytes  Opcode           
.target:                              #        0    0      OPC=<label>      
  xorb %dil, %dil                     #  1     0    2      OPC=xorb_r8_r8   
  callq .move_byte_15_of_ymm1_to_r9b  #  2     0x2  5      OPC=callq_label  
  callq .read_cf_into_rbx             #  3     0x7  5      OPC=callq_label  
  addb %r9b, %bl                      #  4     0xc  3      OPC=addb_r8_r8   
  retq                                #  5     0xf  1      OPC=retq         
                                                                            
.size target, .-target
