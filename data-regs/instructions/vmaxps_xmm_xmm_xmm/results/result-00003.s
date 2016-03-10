  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                #  Line  RIP   Bytes  Opcode                  
.target:                              #        0     0      OPC=<label>             
  vmovdqu %xmm3, %xmm1                #  1     0     4      OPC=vmovdqu_xmm_xmm     
  vmovupd %xmm2, %xmm0                #  2     0x4   4      OPC=vmovupd_xmm_xmm     
  callq .move_byte_20_of_ymm1_to_r8b  #  3     0x8   5      OPC=callq_label         
  callq .move_r8b_to_byte_30_of_ymm1  #  4     0xd   5      OPC=callq_label         
  vmaxps %ymm1, %ymm0, %ymm1          #  5     0x12  4      OPC=vmaxps_ymm_ymm_ymm  
  retq                                #  6     0x16  1      OPC=retq                
                                                                                    
.size target, .-target
