  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                         #  Line  RIP   Bytes  Opcode                  
.target:                       #        0     0      OPC=<label>             
  vmovups %xmm1, %xmm13        #  1     0     4      OPC=vmovups_xmm_xmm     
  vmovsd %xmm2, %xmm2, %xmm7   #  2     0x4   4      OPC=vmovsd_xmm_xmm_xmm  
  vsubpd %ymm7, %ymm13, %ymm9  #  3     0x8   4      OPC=vsubpd_ymm_ymm_ymm  
  movaps %xmm9, %xmm1          #  4     0xc   4      OPC=movaps_xmm_xmm      
  retq                         #  5     0x10  1      OPC=retq                
                                                                             
.size target, .-target
