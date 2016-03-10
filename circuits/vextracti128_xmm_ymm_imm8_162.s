  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  vmovdqu %xmm1, %xmm12       #  1     0    4      OPC=vmovdqu_xmm_xmm     
  movups %xmm1, %xmm0         #  2     0x4  3      OPC=movups_xmm_xmm      
  vorpd %ymm1, %ymm12, %ymm6  #  3     0x7  4      OPC=vorpd_ymm_ymm_ymm   
  vmovsd %xmm0, %xmm6, %xmm1  #  4     0xb  4      OPC=vmovsd_xmm_xmm_xmm  
  retq                        #  5     0xf  1      OPC=retq                
                                                                           
.size target, .-target
