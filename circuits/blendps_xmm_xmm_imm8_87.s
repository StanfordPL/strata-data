  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP  Bytes  Opcode                      
.target:                          #        0    0      OPC=<label>                 
  movshdup %xmm1, %xmm7           #  1     0    4      OPC=movshdup_xmm_xmm        
  vpunpckhdq %xmm7, %xmm2, %xmm4  #  2     0x4  4      OPC=vpunpckhdq_xmm_xmm_xmm  
  movaps %xmm2, %xmm1             #  3     0x8  3      OPC=movaps_xmm_xmm          
  movlhps %xmm4, %xmm1            #  4     0xb  3      OPC=movlhps_xmm_xmm         
  retq                            #  5     0xe  1      OPC=retq                    
                                                                                   
.size target, .-target
