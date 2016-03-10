  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP  Bytes  Opcode                      
.target:                          #        0    0      OPC=<label>                 
  movddup %xmm2, %xmm5            #  1     0    4      OPC=movddup_xmm_xmm         
  movapd %xmm2, %xmm3             #  2     0x4  4      OPC=movapd_xmm_xmm          
  unpckhps %xmm3, %xmm5           #  3     0x8  3      OPC=unpckhps_xmm_xmm        
  vpunpckhdq %xmm3, %xmm5, %xmm1  #  4     0xb  4      OPC=vpunpckhdq_xmm_xmm_xmm  
  retq                            #  5     0xf  1      OPC=retq                    
                                                                                   
.size target, .-target
