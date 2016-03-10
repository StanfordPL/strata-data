  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP   Bytes  Opcode             
.target:                             #        0     0      OPC=<label>        
  callq .read_zf_into_rbx            #  1     0     5      OPC=callq_label    
  callq .move_064_032_rbx_r12d_r13d  #  2     0x5   5      OPC=callq_label    
  xaddb %r13b, %bl                   #  3     0xa   4      OPC=xaddb_r8_r8    
  shll $0x1, %r13d                   #  4     0xe   3      OPC=shll_r32_one   
  setbe %ah                          #  5     0x11  3      OPC=setbe_rh       
  movsbl %ah, %ebx                   #  6     0x14  3      OPC=movsbl_r32_rh  
  retq                               #  7     0x17  1      OPC=retq           
                                                                              
.size target, .-target
