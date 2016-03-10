  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                          #  Line  RIP   Bytes  Opcode                  
.target:                        #        0     0      OPC=<label>             
  vmovaps %xmm2, %xmm2          #  1     0     4      OPC=vmovaps_xmm_xmm     
  vmovdqu %xmm1, %xmm15         #  2     0x4   4      OPC=vmovdqu_xmm_xmm     
  vsubps %ymm2, %ymm15, %ymm14  #  3     0x8   4      OPC=vsubps_ymm_ymm_ymm  
  movdqa %xmm14, %xmm1          #  4     0xc   5      OPC=movdqa_xmm_xmm      
  retq                          #  5     0x11  1      OPC=retq                
                                                                              
.size target, .-target
