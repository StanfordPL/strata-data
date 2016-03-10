  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                      
.target:                              #        0     0      OPC=<label>                 
  xorl %ebx, %ebx                     #  1     0     2      OPC=xorl_r32_r32            
  vpunpckldq %xmm1, %xmm1, %xmm3      #  2     0x2   4      OPC=vpunpckldq_xmm_xmm_xmm  
  vmovaps %ymm3, %ymm1                #  3     0x6   4      OPC=vmovaps_ymm_ymm         
  salb $0x1, %bh                      #  4     0xa   2      OPC=salb_rh_one             
  callq .move_byte_15_of_ymm1_to_r9b  #  5     0xc   5      OPC=callq_label             
  xaddb %bl, %r9b                     #  6     0x11  4      OPC=xaddb_r8_r8             
  retq                                #  7     0x15  1      OPC=retq                    
                                                                                        
.size target, .-target
