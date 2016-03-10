  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                 
.target:                             #        0     0      OPC=<label>            
  andnl %ebx, %ebx, %r9d             #  1     0     5      OPC=andnl_r32_r32_r32  
  xaddw %r9w, %bx                    #  2     0x5   5      OPC=xaddw_r16_r16      
  minss %xmm1, %xmm1                 #  3     0xa   4      OPC=minss_xmm_xmm      
  callq .move_r9b_to_byte_0_of_ymm1  #  4     0xe   5      OPC=callq_label        
  retq                               #  5     0x13  1      OPC=retq               
                                                                                  
.size target, .-target
