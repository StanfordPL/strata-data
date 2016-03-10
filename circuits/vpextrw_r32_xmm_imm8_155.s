  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                     
.target:                              #        0     0      OPC=<label>                
  vmovdqa %xmm1, %xmm15               #  1     0     4      OPC=vmovdqa_xmm_xmm        
  vmovdqu %xmm15, %xmm4               #  2     0x4   5      OPC=vmovdqu_xmm_xmm        
  vunpcklpd %xmm4, %xmm1, %xmm1       #  3     0x9   4      OPC=vunpcklpd_xmm_xmm_xmm  
  callq .move_byte_14_of_ymm1_to_r8b  #  4     0xd   5      OPC=callq_label            
  callq .move_byte_15_of_ymm1_to_r9b  #  5     0x12  5      OPC=callq_label            
  callq .move_008_016_r8b_r9b_dx      #  6     0x17  5      OPC=callq_label            
  movzwl %dx, %ebx                    #  7     0x1c  3      OPC=movzwl_r32_r16         
  retq                                #  8     0x1f  1      OPC=retq                   
                                                                                       
.size target, .-target
