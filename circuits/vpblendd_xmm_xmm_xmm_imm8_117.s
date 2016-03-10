  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP  Bytes  Opcode                      
.target:                          #        0    0      OPC=<label>                 
  vmovshdup %xmm2, %xmm6          #  1     0    4      OPC=vmovshdup_xmm_xmm       
  vmovss %xmm3, %xmm6, %xmm1      #  2     0x4  4      OPC=vmovss_xmm_xmm_xmm      
  vpunpckhdq %xmm6, %xmm3, %xmm7  #  3     0x8  4      OPC=vpunpckhdq_xmm_xmm_xmm  
  movlhps %xmm7, %xmm1            #  4     0xc  3      OPC=movlhps_xmm_xmm         
  retq                            #  5     0xf  1      OPC=retq                    
                                                                                   
.size target, .-target
