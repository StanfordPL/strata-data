  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                          #  Line  RIP   Bytes  Opcode                  
.target:                        #        0     0      OPC=<label>             
  vmovupd %xmm2, %xmm15         #  1     0     4      OPC=vmovupd_xmm_xmm     
  vmovaps %xmm1, %xmm12         #  2     0x4   4      OPC=vmovaps_xmm_xmm     
  vmovupd %xmm15, %xmm15        #  3     0x8   5      OPC=vmovupd_xmm_xmm     
  vsubps %ymm15, %ymm12, %ymm7  #  4     0xd   5      OPC=vsubps_ymm_ymm_ymm  
  movapd %xmm7, %xmm1           #  5     0x12  4      OPC=movapd_xmm_xmm      
  retq                          #  6     0x16  1      OPC=retq                
                                                                              
.size target, .-target
