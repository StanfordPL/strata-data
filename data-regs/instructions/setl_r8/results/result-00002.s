  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP   Bytes  Opcode           
.target:                             #        0     0      OPC=<label>      
  setnge %bpl                        #  1     0     4      OPC=setnge_r8    
  callq .read_of_into_rbx            #  2     0x4   5      OPC=callq_label  
  callq .read_of_into_rcx            #  3     0x9   5      OPC=callq_label  
  callq .move_064_032_rcx_r10d_r11d  #  4     0xe   5      OPC=callq_label  
  xaddb %bl, %ch                     #  5     0x13  3      OPC=xaddb_rh_r8  
  xchgb %bpl, %r11b                  #  6     0x16  3      OPC=xchgb_r8_r8  
  addb %r11b, %bl                    #  7     0x19  3      OPC=addb_r8_r8   
  retq                               #  8     0x1c  1      OPC=retq         
                                                                            
.size target, .-target
