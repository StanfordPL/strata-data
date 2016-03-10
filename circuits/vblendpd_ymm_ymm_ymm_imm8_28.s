  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                         #  Line  RIP  Bytes  Opcode                  
.target:                       #        0    0      OPC=<label>             
  vmaxsd %xmm2, %xmm2, %xmm15  #  1     0    4      OPC=vmaxsd_xmm_xmm_xmm  
  vmovups %ymm3, %ymm1         #  2     0x4  4      OPC=vmovups_ymm_ymm     
  movaps %xmm15, %xmm1         #  3     0x8  4      OPC=movaps_xmm_xmm      
  retq                         #  4     0xc  1      OPC=retq                
                                                                            
.size target, .-target
