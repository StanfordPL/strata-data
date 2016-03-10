  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  vmovsldup %xmm2, %xmm6      #  1     0    4      OPC=vmovsldup_xmm_xmm   
  vminsd %xmm6, %xmm6, %xmm3  #  2     0x4  4      OPC=vminsd_xmm_xmm_xmm  
  movaps %xmm3, %xmm1         #  3     0x8  3      OPC=movaps_xmm_xmm      
  retq                        #  4     0xb  1      OPC=retq                
                                                                           
.size target, .-target
