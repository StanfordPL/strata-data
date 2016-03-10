  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                  
.target:                             #        0     0      OPC=<label>             
  vcvttps2dq %xmm1, %xmm11           #  1     0     4      OPC=vcvttps2dq_xmm_xmm  
  cvtsd2sil %xmm11, %r9d             #  2     0x4   5      OPC=cvtsd2sil_r32_xmm   
  xchgw %bx, %r9w                    #  3     0x9   4      OPC=xchgw_r16_r16       
  callq .move_r9b_to_byte_6_of_ymm1  #  4     0xd   5      OPC=callq_label         
  retq                               #  5     0x12  1      OPC=retq                
                                                                                   
.size target, .-target
