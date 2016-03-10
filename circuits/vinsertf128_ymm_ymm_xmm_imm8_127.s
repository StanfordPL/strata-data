  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                  
.target:                              #        0     0      OPC=<label>             
  vmaxsd %xmm3, %xmm3, %xmm9          #  1     0     4      OPC=vmaxsd_xmm_xmm_xmm  
  vmovapd %ymm2, %ymm8                #  2     0x4   4      OPC=vmovapd_ymm_ymm     
  callq .move_128_256_xmm8_xmm9_ymm2  #  3     0x8   5      OPC=callq_label         
  vmovupd %ymm2, %ymm1                #  4     0xd   4      OPC=vmovupd_ymm_ymm     
  retq                                #  5     0x11  1      OPC=retq                
                                                                                    
.size target, .-target
