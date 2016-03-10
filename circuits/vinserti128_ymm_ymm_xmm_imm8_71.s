  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                  
.target:                                #        0     0      OPC=<label>             
  vmovaps %xmm3, %xmm13                 #  1     0     4      OPC=vmovaps_xmm_xmm     
  movdqu %xmm2, %xmm5                   #  2     0x4   4      OPC=movdqu_xmm_xmm      
  vandps %xmm5, %xmm5, %xmm12           #  3     0x8   4      OPC=vandps_xmm_xmm_xmm  
  callq .move_128_256_xmm12_xmm13_ymm3  #  4     0xc   5      OPC=callq_label         
  vmovdqu %ymm3, %ymm1                  #  5     0x11  4      OPC=vmovdqu_ymm_ymm     
  retq                                  #  6     0x15  1      OPC=retq                
                                                                                      
.size target, .-target
