  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode           
.target:                             #        0     0      OPC=<label>      
  xorb %bl, %bl                      #  1     0     2      OPC=xorb_r8_r8   
  callq .move_byte_3_of_ymm1_to_r9b  #  2     0x2   5      OPC=callq_label  
  callq .read_sf_into_rbx            #  3     0x7   5      OPC=callq_label  
  xaddb %r9b, %bl                    #  4     0xc   4      OPC=xaddb_r8_r8  
  retq                               #  5     0x10  1      OPC=retq         
                                                                            
.size target, .-target
