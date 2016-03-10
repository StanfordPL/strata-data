  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                          #  Line  RIP   Bytes  Opcode                  
.target:                        #        0     0      OPC=<label>             
  vorps %xmm1, %xmm1, %xmm9     #  1     0     4      OPC=vorps_xmm_xmm_xmm   
  vmovaps %xmm2, %xmm13         #  2     0x4   4      OPC=vmovaps_xmm_xmm     
  vdivpd %ymm13, %ymm9, %ymm14  #  3     0x8   5      OPC=vdivpd_ymm_ymm_ymm  
  movaps %xmm14, %xmm1          #  4     0xd   4      OPC=movaps_xmm_xmm      
  retq                          #  5     0x11  1      OPC=retq                
                                                                              
.size target, .-target
