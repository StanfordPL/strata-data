  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP   Bytes  Opcode              
.target:                            #        0     0      OPC=<label>         
  callq .move_016_008_cx_r10b_r11b  #  1     0     5      OPC=callq_label     
  callq .move_016_008_bx_r12b_r13b  #  2     0x5   5      OPC=callq_label     
  xaddb %r11b, %r13b                #  3     0xa   4      OPC=xaddb_r8_r8     
  cmovlw %cx, %cx                   #  4     0xe   4      OPC=cmovlw_r16_r16  
  subw %cx, %bx                     #  5     0x12  3      OPC=subw_r16_r16    
  retq                              #  6     0x15  1      OPC=retq            
                                                                              
.size target, .-target
