  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                #  Line  RIP   Bytes  Opcode                  
.target:                              #        0     0      OPC=<label>             
  vmovapd %xmm3, %xmm1                #  1     0     4      OPC=vmovapd_xmm_xmm     
  vmovups %xmm2, %xmm13               #  2     0x4   4      OPC=vmovups_xmm_xmm     
  vaddps %ymm1, %ymm13, %ymm1         #  3     0x8   4      OPC=vaddps_ymm_ymm_ymm  
  callq .move_byte_25_of_ymm1_to_r9b  #  4     0xc   5      OPC=callq_label         
  callq .move_r9b_to_byte_25_of_ymm1  #  5     0x11  5      OPC=callq_label         
  retq                                #  6     0x16  1      OPC=retq                
                                                                                    
.size target, .-target
