  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP  Bytes  Opcode                      
.target:                           #        0    0      OPC=<label>                 
  movsldup %xmm2, %xmm7            #  1     0    4      OPC=movsldup_xmm_xmm        
  vpunpckhdq %xmm3, %xmm7, %xmm12  #  2     0x4  4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vmovsd %xmm2, %xmm12, %xmm1      #  3     0x8  4      OPC=vmovsd_xmm_xmm_xmm      
  retq                             #  4     0xc  1      OPC=retq                    
                                                                                    
.size target, .-target
