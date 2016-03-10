  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode               
.target:                              #        0     0      OPC=<label>          
  movapd %xmm2, %xmm15                #  1     0     5      OPC=movapd_xmm_xmm   
  vmovdqu %xmm15, %xmm1               #  2     0x5   5      OPC=vmovdqu_xmm_xmm  
  movslq %ebx, %r9                    #  3     0xa   3      OPC=movslq_r64_r32   
  callq .move_r9b_to_byte_14_of_ymm1  #  4     0xd   5      OPC=callq_label      
  callq .move_016_008_bx_r8b_r9b      #  5     0x12  5      OPC=callq_label      
  callq .move_r9b_to_byte_15_of_ymm1  #  6     0x17  5      OPC=callq_label      
  retq                                #  7     0x1c  1      OPC=retq             
                                                                                 
.size target, .-target
