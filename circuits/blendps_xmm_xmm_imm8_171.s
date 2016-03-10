  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP  Bytes  Opcode                      
.target:                          #        0    0      OPC=<label>                 
  movsldup %xmm1, %xmm3           #  1     0    4      OPC=movsldup_xmm_xmm        
  vpunpckhdq %xmm2, %xmm3, %xmm6  #  2     0x4  4      OPC=vpunpckhdq_xmm_xmm_xmm  
  movups %xmm6, %xmm1             #  3     0x8  3      OPC=movups_xmm_xmm          
  movsd %xmm2, %xmm1              #  4     0xb  4      OPC=movsd_xmm_xmm           
  retq                            #  5     0xf  1      OPC=retq                    
                                                                                   
.size target, .-target
