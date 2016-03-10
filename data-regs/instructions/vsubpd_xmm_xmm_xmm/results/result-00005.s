  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                #  Line  RIP   Bytes  Opcode                  
.target:                              #        0     0      OPC=<label>             
  vmovdqa %xmm3, %xmm13               #  1     0     4      OPC=vmovdqa_xmm_xmm     
  vmovups %xmm2, %xmm1                #  2     0x4   4      OPC=vmovups_xmm_xmm     
  callq .move_byte_19_of_ymm1_to_r9b  #  3     0x8   5      OPC=callq_label         
  vsubpd %ymm13, %ymm1, %ymm1         #  4     0xd   5      OPC=vsubpd_ymm_ymm_ymm  
  callq .move_r9b_to_byte_16_of_ymm1  #  5     0x12  5      OPC=callq_label         
  retq                                #  6     0x17  1      OPC=retq                
                                                                                    
.size target, .-target
