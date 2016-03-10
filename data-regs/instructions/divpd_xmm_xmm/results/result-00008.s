  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                          #  Line  RIP   Bytes  Opcode                  
.target:                        #        0     0      OPC=<label>             
  vmovaps %xmm1, %xmm14         #  1     0     4      OPC=vmovaps_xmm_xmm     
  vmovapd %xmm2, %xmm3          #  2     0x4   4      OPC=vmovapd_xmm_xmm     
  vdivpd %ymm3, %ymm14, %ymm11  #  3     0x8   4      OPC=vdivpd_ymm_ymm_ymm  
  movaps %xmm11, %xmm1          #  4     0xc   4      OPC=movaps_xmm_xmm      
  retq                          #  5     0x10  1      OPC=retq                
                                                                              
.size target, .-target
