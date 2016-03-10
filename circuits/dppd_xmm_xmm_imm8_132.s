  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                        #  Line  RIP  Bytes  Opcode                 
.target:                      #        0    0      OPC=<label>            
  vpxor %xmm3, %xmm3, %xmm10  #  1     0    4      OPC=vpxor_xmm_xmm_xmm  
  movq %xmm10, %xmm1          #  2     0x4  5      OPC=movq_xmm_xmm       
  retq                        #  3     0x9  1      OPC=retq               
                                                                          
.size target, .-target
