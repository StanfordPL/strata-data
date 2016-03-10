  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP   Bytes  Opcode           
.target:                             #        0     0      OPC=<label>      
  setz %r9b                          #  1     0     4      OPC=setz_r8      
  callq .read_cf_into_rcx            #  2     0x4   5      OPC=callq_label  
  callq .move_064_032_rcx_r12d_r13d  #  3     0x9   5      OPC=callq_label  
  xaddb %r9b, %r12b                  #  4     0xe   4      OPC=xaddb_r8_r8  
  sete %bl                           #  5     0x12  3      OPC=sete_r8      
  retq                               #  6     0x15  1      OPC=retq         
                                                                            
.size target, .-target
