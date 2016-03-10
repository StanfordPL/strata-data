  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  movupd %xmm3, %xmm4             #  1     0     4      OPC=movupd_xmm_xmm         
  vmovsldup %xmm3, %xmm14         #  2     0x4   4      OPC=vmovsldup_xmm_xmm      
  vunpckhps %xmm2, %xmm14, %xmm1  #  3     0x8   4      OPC=vunpckhps_xmm_xmm_xmm  
  movsd %xmm4, %xmm1              #  4     0xc   4      OPC=movsd_xmm_xmm          
  retq                            #  5     0x10  1      OPC=retq                   
                                                                                   
.size target, .-target
