  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                               #  Line  RIP   Bytes  Opcode                  
.target:                             #        0     0      OPC=<label>             
  vxorps %xmm4, %xmm4, %xmm6         #  1     0     4      OPC=vxorps_xmm_xmm_xmm  
  vcvtps2dq %ymm6, %ymm1             #  2     0x4   4      OPC=vcvtps2dq_ymm_ymm   
  callq .move_byte_5_of_ymm1_to_r9b  #  3     0x8   5      OPC=callq_label         
  setnbe %r10b                       #  4     0xd   4      OPC=setnbe_r8           
  xaddb %r10b, %r9b                  #  5     0x11  4      OPC=xaddb_r8_r8         
  cmovzw %cx, %bx                    #  6     0x15  4      OPC=cmovzw_r16_r16      
  retq                               #  7     0x19  1      OPC=retq                
                                                                                   
.size target, .-target
