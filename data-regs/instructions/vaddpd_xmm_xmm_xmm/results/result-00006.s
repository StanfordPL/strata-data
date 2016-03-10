  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                #  Line  RIP   Bytes  Opcode                  
.target:                              #        0     0      OPC=<label>             
  vmovups %xmm2, %xmm1                #  1     0     4      OPC=vmovups_xmm_xmm     
  vmovups %xmm3, %xmm10               #  2     0x4   4      OPC=vmovups_xmm_xmm     
  callq .move_256_128_ymm1_xmm8_xmm9  #  3     0x8   5      OPC=callq_label         
  vmovdqa %xmm8, %xmm11               #  4     0xd   5      OPC=vmovdqa_xmm_xmm     
  vaddpd %ymm10, %ymm11, %ymm1        #  5     0x12  5      OPC=vaddpd_ymm_ymm_ymm  
  retq                                #  6     0x17  1      OPC=retq                
                                                                                    
.size target, .-target
