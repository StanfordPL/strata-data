  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  mulsd %xmm2, %xmm1              #  1     0     4      OPC=mulsd_xmm_xmm          
  vmovaps %xmm1, %xmm6            #  2     0x4   4      OPC=vmovaps_xmm_xmm        
  psubq %xmm6, %xmm1              #  3     0x8   4      OPC=psubq_xmm_xmm          
  vunpcklpd %xmm6, %xmm1, %xmm14  #  4     0xc   4      OPC=vunpcklpd_xmm_xmm_xmm  
  addsubpd %xmm14, %xmm1          #  5     0x10  5      OPC=addsubpd_xmm_xmm       
  retq                            #  6     0x15  1      OPC=retq                   
                                                                                   
.size target, .-target
