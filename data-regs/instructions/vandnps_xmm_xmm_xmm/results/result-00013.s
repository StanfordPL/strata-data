  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  orps %xmm2, %xmm3           #  1     0    3      OPC=orps_xmm_xmm        
  pxor %xmm3, %xmm2           #  2     0x3  4      OPC=pxor_xmm_xmm        
  vmovdqu %xmm2, %xmm1        #  3     0x7  4      OPC=vmovdqu_xmm_xmm     
  vminps %ymm1, %ymm1, %ymm1  #  4     0xb  4      OPC=vminps_ymm_ymm_ymm  
  retq                        #  5     0xf  1      OPC=retq                
                                                                           
.size target, .-target
