  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  vpunpckhdq %xmm2, %xmm2, %xmm14  #  1     0     4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vbroadcastsd %xmm2, %ymm15       #  2     0x4   5      OPC=vbroadcastsd_ymm_xmm    
  vunpckhps %xmm14, %xmm1, %xmm4   #  3     0x9   5      OPC=vunpckhps_xmm_xmm_xmm   
  movaps %xmm15, %xmm1             #  4     0xe   4      OPC=movaps_xmm_xmm          
  punpcklqdq %xmm4, %xmm1          #  5     0x12  4      OPC=punpcklqdq_xmm_xmm      
  retq                             #  6     0x16  1      OPC=retq                    
                                                                                     
.size target, .-target
