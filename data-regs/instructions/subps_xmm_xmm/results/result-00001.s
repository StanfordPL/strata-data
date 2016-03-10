  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                         #  Line  RIP   Bytes  Opcode                  
.target:                       #        0     0      OPC=<label>             
  vmovupd %xmm2, %xmm12        #  1     0     4      OPC=vmovupd_xmm_xmm     
  vmovdqu %xmm1, %xmm7         #  2     0x4   4      OPC=vmovdqu_xmm_xmm     
  vsubps %ymm12, %ymm7, %ymm5  #  3     0x8   5      OPC=vsubps_ymm_ymm_ymm  
  movaps %xmm5, %xmm1          #  4     0xd   3      OPC=movaps_xmm_xmm      
  retq                         #  5     0x10  1      OPC=retq                
                                                                             
.size target, .-target
